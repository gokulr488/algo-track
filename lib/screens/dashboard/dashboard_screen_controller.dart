import 'dart:async';

import 'package:algo_track/common/app_state.dart';
import 'package:algo_track/components/alerts.dart';
import 'package:algo_track/models/enums/time_log_type.dart';
import 'package:algo_track/models/enums/user_status.dart';
import 'package:algo_track/models/enums/user_type.dart';
import 'package:algo_track/models/project.dart';
import 'package:algo_track/models/time_log.dart';
import 'package:algo_track/models/user.dart';
import 'package:algo_track/screens/dashboard/user_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as fba;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoardScreenController {
  static Project? selectedProject;
  static User? assistingUser;

  void getData(BuildContext context) async {
    AppState appState = Provider.of<AppState>(context, listen: false);
    if (appState.allProjects == null) {
      await getProjects(appState);
    }
    appState.updateUi();
  }

  Future<void> onRefresh(BuildContext context) async {
    AppState appState = Provider.of<AppState>(context, listen: false);
    await getUserData(appState, context);
    appState.updateUi();
    debugPrint('Reloaded All Users data');
  }

  Future<void> getUserData(AppState appState, BuildContext context) async {
    debugPrint('Getting All userdata');
    fba.User? authUser = fba.FirebaseAuth.instance.currentUser;
    if (authUser == null) FirebaseUIAuth.signOut(context: context);
    //String? fcmToken = await FirebaseMessaging.instance.getToken();
    UserQuerySnapshot userSnapshot = await usersRef.get();
    for (UserQueryDocumentSnapshot user in userSnapshot.docs) {
      if (user.data.authUid == authUser?.uid) {
        processCurrentUser(appState, user);
      } else {
        appState.addUser(user.data);
      }
    }
  }

  void processCurrentUser(AppState appState, UserQueryDocumentSnapshot user) {
    appState.userSnapshot = user;
    if (user.data.userStatus == UserStatus.BUSY) {
      timeLogsRef
          .whereUserId(isEqualTo: user.id)
          .whereEndTime(isNull: true)
          .get()
          .then((value) {
        if (value.docs.length == 1) {
          appState.timeLog = value.docs.first.data;
          appState.timeLogSnapshot = value.docs.first.reference;
        }
      });
    }
    // if (appState.userSnapshot?.fcmToken == null ||
    //     appState.userSnapshot?.fcmToken != fcmToken) {
    //   debugPrint('Updating Notifications Token');
    //   appState.userSnapshot?.fcmToken = fcmToken;
    //   user.reference.update(fcmToken: fcmToken);
    // }
  }

  Future<void> getProjects(AppState appState) async {
    debugPrint('Getting All Projects');
    ProjectQuerySnapshot projectSnapshot = await projectRef.get();
    List<Project> projects = [];
    for (ProjectQueryDocumentSnapshot project in projectSnapshot.docs) {
      projects.add(project.data);
    }
    appState.allProjects = projects;
  }

  List<UserCard> getUserCards(BuildContext context) {
    AppState appState = Provider.of<AppState>(context, listen: false);

    List<UserCard>? userCards = [];
    for (User user in appState.allUsers) {
      UserCard card = UserCard(user: user);
      userCards.add(card);
    }
    return userCards;
  }

  onStartWorkPressed(BuildContext context) async {
    if (selectedProject == null) {
      showErrorAlert(context, 'Please Select a Project');
      return;
    }
    AppState appState = Provider.of<AppState>(context, listen: false);
    TimeLog timeLog = TimeLog(
        timeLogType: TimeLogType.MANUAL,
        userId: appState.userSnapshot?.id ?? '',
        startTime: Timestamp.now(),
        projectId: selectedProject?.id,
        assistingUserId: assistingUser?.id);
    // await FirebaseFirestore.instance.runTransaction((transaction) async {
    //   appState.userSnapshot?.reference
    //       .transactionUpdate(transaction, userStatus: UserStatus.BUSY);
    //   appState.timeLogSnapshot = await timeLogsRef.add(timeLog);
    //   appState.timeLog = timeLog;
    // });
    await appState.userSnapshot?.reference.update(userStatus: UserStatus.BUSY);
    timeLogsRef.add(timeLog).then((value) {
      appState.timeLogSnapshot = value;
      appState.timeLog = timeLog;
      appState.updateUi();
      showSilentAlerts('Work started succesfully');
    });
  }

  onStopWorkPressed(BuildContext context) async {
    AppState appState = Provider.of<AppState>(context, listen: false);
    await FirebaseFirestore.instance.runTransaction((transaction) async {
      appState.timeLogSnapshot
          ?.transactionUpdate(transaction, endTime: Timestamp.now());
      appState.userSnapshot?.reference
          .transactionUpdate(transaction, userStatus: UserStatus.AVAILABLE);
    }).then((value) {
      appState.timeLogSnapshot = null;
      appState.timeLog = null;
      appState.updateUi();
      showSilentAlerts('Succesfully stopped Work');
    });
  }

  onLeavePressed(BuildContext context) {}

  void onUserData(
      AsyncSnapshot<UserQuerySnapshot> snapshot, BuildContext context) {
    fba.User? authUser = fba.FirebaseAuth.instance.currentUser;
    AppState appState = Provider.of<AppState>(context);
    for (UserQueryDocumentSnapshot user in snapshot.data?.docs ?? []) {
      if (user.data.authUid == authUser?.uid) {
        processCurrentUser(appState, user);
      } else {
        appState.addUser(user.data);
      }
    }
    Timer(const Duration(seconds: 1), () => appState.updateUi());
  }

  createDummyUser() async {
    User user = User(
        userName: 'Lalkrishna Udayakumar',
        emailId: 'lalkrishnaudayakumar40@gmail.com',
        phoneNumber: '+919074827514',
        userType: UserType.EMPLOYEE,
        companyId: 'EB6GRMPIXTjUbEo3zK0I',
        authUid: 'k6R2iJULOLXOtWTPRjrSuykW3WS2',
        // currentProjects: projects,
        userStatus: UserStatus.AVAILABLE);
    await usersRef.add(user);
    debugPrint('User saved');
  }

  createProjects() async {
    Project projects = Project(
        projectName: 'Trading',
        projectGroupId: '1O91xUBHfMyvkuxSBBC1',
        leadUserId: 'Tw3ZnbSfhNZJAb2XypJW',
        companyId: 'EB6GRMPIXTjUbEo3zK0I');
    await projectRef.add(projects);
    debugPrint('project created');
    // CompanyQuerySnapshot companySnap = await companiesRef
    //     .whereCompanyName(isEqualTo: 'Algol soft')
    //     .whereEmailId(isEqualTo: 'algolsoft@algols.in')
    //     .get();
    // Company company = companySnap.docs.first.data;

    // ProjectGroup projectGroup = ProjectGroup(
    //     projectGroupName: 'projectGroupName', companyId: company.id ?? '');
    // projectGroupRef.add(projectGroup);
    // Company company = Company(
    //     companyName: 'Algol soft',
    //     emailId: 'algolsoft@algols.in',
    //     password: 'algols@123',
    //     adminUserId: 'E2O0YV7SbBjKyusIBqxz');
    // await companiesRef.add(company);
    // debugPrint('Project saved');
  }
}

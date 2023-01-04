import 'package:algo_track/common/ui_state.dart';
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
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoardScreenController {
  static Project? selectedProject;
  static User? assistingUser;

  void getData(BuildContext context) async {
    UiState uiState = Provider.of<UiState>(context, listen: false);
    if (uiState.allUsers == null) {
      //await getUserData(uiState);
    }
    if (uiState.allProjects == null) {
      await getProjects(uiState);
    }
    uiState.updateUi();
  }

  Future<void> onRefresh(BuildContext context) async {
    UiState uiState = Provider.of<UiState>(context, listen: false);
    uiState.allUsers = null;
    await getUserData(uiState);
    uiState.updateUi;
    debugPrint('Reloaded All Users data');
  }

  Future<void> getUserData(UiState uiState) async {
    debugPrint('Getting All userdata');
    fba.User? authUser = fba.FirebaseAuth.instance.currentUser;
    //String? fcmToken = await FirebaseMessaging.instance.getToken();
    UserQuerySnapshot userSnapshot = await usersRef.get();
    List<User> users = [];
    for (UserQueryDocumentSnapshot user in userSnapshot.docs) {
      if (user.data.authUid == authUser?.uid) {
        processCurrentUser(uiState, user);
      } else {
        users.add(user.data);
      }
    }
    uiState.allUsers = users;
  }

  void processCurrentUser(UiState uiState, UserQueryDocumentSnapshot user) {
    uiState.userSnapshot = user;
    if (user.data.userStatus == UserStatus.BUSY) {
      timeLogsRef
          .whereUserId(isEqualTo: user.id)
          .whereEndTime(isNull: true)
          .get()
          .then((value) {
        if (value.docs.length == 1) {
          uiState.timeLog = value.docs.first.data;
          uiState.timeLogSnapshot = value.docs.first.reference;
        }
      });
    }
    // if (uiState.userSnapshot?.fcmToken == null ||
    //     uiState.userSnapshot?.fcmToken != fcmToken) {
    //   debugPrint('Updating Notifications Token');
    //   uiState.userSnapshot?.fcmToken = fcmToken;
    //   user.reference.update(fcmToken: fcmToken);
    // }
  }

  Future<void> getProjects(UiState uiState) async {
    debugPrint('Getting All Projects');
    ProjectQuerySnapshot projectSnapshot = await projectRef.get();
    List<Project> projects = [];
    for (ProjectQueryDocumentSnapshot project in projectSnapshot.docs) {
      projects.add(project.data);
    }
    uiState.allProjects = projects;
  }

  createDummyUser() async {
    User user = User(
        userName: 'Shineed Basheer',
        emailId: 'shineedbasheer@gmail.com',
        phoneNumber: '+917994411090',
        password: 'testPass',
        userType: UserType.EMPLOYEE,
        companyId: 'EB6GRMPIXTjUbEo3zK0I',
        // currentProjects: projects,
        userStatus: UserStatus.AVAILABLE);
    await usersRef.add(user);
    debugPrint('User saved');
  }

  createProjects() async {
    Project projects = Project(
        projectName: 'Algo Bot',
        projectGroupId: '1O91xUBHfMyvkuxSBBC1',
        leadUserId: 'GR9dlIuCVfBUKridw54i',
        companyId: 'EB6GRMPIXTjUbEo3zK0I');
    projectRef.add(projects);
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

  List<UserCard> getUserCards(BuildContext context) {
    UiState uiState = Provider.of<UiState>(context, listen: false);

    List<UserCard>? userCards = [];
    for (User user in uiState.allUsers ?? []) {
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
    UiState uiState = Provider.of<UiState>(context, listen: false);
    TimeLog timeLog = TimeLog(
        timeLogType: TimeLogType.MANUAL,
        userId: uiState.userSnapshot?.id ?? '',
        startTime: Timestamp.now(),
        projectId: selectedProject?.id,
        assistingUserId: assistingUser?.id);
    // await FirebaseFirestore.instance.runTransaction((transaction) async {
    //   uiState.userSnapshot?.reference
    //       .transactionUpdate(transaction, userStatus: UserStatus.BUSY);
    //   uiState.timeLogSnapshot = await timeLogsRef.add(timeLog);
    //   uiState.timeLog = timeLog;
    // });
    uiState.userSnapshot?.reference.update(userStatus: UserStatus.BUSY);
    uiState.timeLogSnapshot = await timeLogsRef.add(timeLog);
    uiState.timeLog = timeLog;

    showSilentAlerts('Work started succesfully');
  }

  onStopWorkPressed(BuildContext context) async {
    UiState uiState = Provider.of<UiState>(context, listen: false);
    await FirebaseFirestore.instance.runTransaction((transaction) async {
      uiState.timeLogSnapshot
          ?.transactionUpdate(transaction, endTime: Timestamp.now());
      uiState.userSnapshot?.reference
          .transactionUpdate(transaction, userStatus: UserStatus.AVAILABLE);
      uiState.timeLogSnapshot = null;
      uiState.timeLog = null;
    });

    showSilentAlerts('Succesfully stopped Work');
    // on restart, need to check user status
  }

  void onUserData(
      AsyncSnapshot<UserQuerySnapshot> snapshot, BuildContext context) {
    fba.User? authUser = fba.FirebaseAuth.instance.currentUser;
    UiState uiState = Provider.of<UiState>(context, listen: false);
    List<User> users = [];
    for (UserQueryDocumentSnapshot user in snapshot.data?.docs ?? []) {
      if (user.data.authUid == authUser?.uid) {
        processCurrentUser(uiState, user);
      } else {
        users.add(user.data);
      }
    }
    uiState.allUsers = users;
  }
}

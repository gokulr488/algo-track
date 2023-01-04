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
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoardScreenController {
  static Project? selectedProject;
  static User? assistingUser;

  void getData(BuildContext context) async {
    UiState uiState = Provider.of<UiState>(context, listen: false);
    if (uiState.allUsers == null) {
      await getUserData(uiState);
    }
    if (uiState.allProjects == null) {
      await getProjects(uiState);
    }
    uiState.updateUi();
  }

  Future<void> getUserData(UiState uiState) async {
    debugPrint('Getting All userdata');
    fba.User? authUser = fba.FirebaseAuth.instance.currentUser;
    String? fcmToken = await FirebaseMessaging.instance.getToken();
    UserQuerySnapshot userSnapshot = await usersRef.get();
    List<User> users = [];
    for (UserQueryDocumentSnapshot user in userSnapshot.docs) {
      if (user.data.authUid == authUser?.uid) {
        uiState.user = user.data;
        if (uiState.user?.fcmToken == null ||
            uiState.user?.fcmToken != fcmToken) {
          debugPrint('Updating Notifications Token');
          uiState.user?.fcmToken = fcmToken;
          user.reference.update(fcmToken: fcmToken);
        }
      } else {
        users.add(user.data);
      }
    }
    uiState.allUsers = users;
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
        userName: '',
        emailId: 'arunviswanathan@gmail.com',
        phoneNumber: '+917907337469',
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
        userId: uiState.user?.id ?? '',
        startTime: Timestamp.now(),
        projectId: selectedProject?.id,
        assistingUserId: assistingUser?.id);
    await timeLogsRef.add(timeLog);
    uiState.timeLog = timeLog;
    showSilentAlerts('Work started succesfully');
    //TODO
    // current user status need to be changed to busy
    // button need to be changed to stop work and red
    //
    // stop work button need to be implemented
  }
}

import 'package:algo_track/common/ui_state.dart';
import 'package:algo_track/models/enums/user_status.dart';
import 'package:algo_track/models/enums/user_type.dart';
import 'package:algo_track/models/project.dart';
import 'package:algo_track/models/user.dart';
import 'package:algo_track/screens/dashboard/user_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoardScreenController {
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
    UserQuerySnapshot userSnapshot = await usersRef.get();
    List<User> users = [];
    for (UserQueryDocumentSnapshot user in userSnapshot.docs) {
      users.add(user.data);
    }
    uiState.setAllUsers(users);
  }

  Future<void> getProjects(UiState uiState) async {
    debugPrint('Getting All Projects');
    ProjectQuerySnapshot projectSnapshot = await projectRef.get();
    List<Project> projects = [];
    for (ProjectQueryDocumentSnapshot project in projectSnapshot.docs) {
      projects.add(project.data);
    }
    uiState.setAllProjects(projects);
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
      if (uiState.user?.id != user.id) {
        UserCard card = UserCard(user: user);
        userCards.add(card);
      }
    }
    return userCards;
  }
}

import 'package:algo_track/common/constants.dart';
import 'package:algo_track/components/base_screen.dart';
import 'package:algo_track/components/responsive.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:algo_track/components/scrollable_list.dart';
import 'package:algo_track/models/company.dart';
import 'package:algo_track/models/current_project.dart';
import 'package:algo_track/models/enums/user_roles.dart';
import 'package:algo_track/models/enums/user_status.dart';
import 'package:algo_track/models/enums/user_type.dart';
import 'package:algo_track/models/project_group.dart';
import 'package:algo_track/models/projects.dart';
import 'package:algo_track/models/user.dart';
import 'package:algo_track/screens/dashboard/start_work.dart';
import 'package:algo_track/screens/dashboard/user_card.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen();

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      headerText: 'Dashboard',
      child: Responsive(
          mobile: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StartWork(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoundedButton(title: 'Start Work', onPressed: () {}),
              ),
              Expanded(
                child: ScrollableList(items: [
                  UserCard(
                    user: User(
                      companyId: '',
                      userName: 'Amritha',
                      emailId: '',
                      phoneNumber: '',
                      userStatus: UserStatus.BUSY,
                      userType: UserType.ADMIN,
                    ),
                  )
                ], childrenHeight: 60),
              ),
            ],
          ),
          desktop: Column()),
    );
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
    Projects projects = Projects(
        projectName: 'Algo Bot',
        projectGroupId: '1O91xUBHfMyvkuxSBBC1',
        leadUserId: 'GR9dlIuCVfBUKridw54i',
        companyId: 'EB6GRMPIXTjUbEo3zK0I');
    projectsRef.add(projects);
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

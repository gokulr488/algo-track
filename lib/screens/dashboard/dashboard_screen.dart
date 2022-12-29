import 'package:algo_track/common/constants.dart';
import 'package:algo_track/components/base_screen.dart';
import 'package:algo_track/components/responsive.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:algo_track/components/scrollable_list.dart';
import 'package:algo_track/models/current_project.dart';
import 'package:algo_track/models/enums/user_roles.dart';
import 'package:algo_track/models/enums/user_status.dart';
import 'package:algo_track/models/enums/user_type.dart';
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
                      userName: 'Kodathi Amritha',
                      emailId: '',
                      phoneNumber: '',
                      userStatus: UserStatus.AVAILABLE,
                      userType: UserType.ADMIN,
                    ),
                  )
                ], childrenHeight: 60),
              )
            ],
          ),
          desktop: Column()),
    );
  }

  createDummyUser() async {
    List<CurrentProject> projects = [
      CurrentProject(
        projectId: 'testProjectId',
        projectName: 'Algo Track',
        userId: 'blankId',
        userName: 'Gokul Raj',
        userRole: UserRole.PROJECT_LEAD,
      )
    ];
    User user = User(
        userName: 'Gokul Raj',
        emailId: 'gokulr488@gmail.com',
        phoneNumber: '+917403991677',
        password: 'testPass',
        userType: UserType.SUPER_USER,
        companyId: 'sdfghjkihgfghjnjshdgbvbnjokij',
        currentProjects: projects,
        userStatus: UserStatus.AVAILABLE);
    await usersRef.add(user);
    debugPrint('User saved');
  }
}

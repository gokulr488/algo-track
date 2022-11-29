import 'package:algo_track/common/constants.dart';
import 'package:algo_track/components/base_screen.dart';
import 'package:algo_track/components/responsive.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:algo_track/models/current_project.dart';
import 'package:algo_track/models/enums/user_roles.dart';
import 'package:algo_track/models/enums/user_type.dart';
import 'package:algo_track/models/user.dart';
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
              RoundedButton(
                  title: 'Nfc Test',
                  onPressed: () => context.goNamed(NFC_TEST_SCREEN)),
              RoundedButton(
                  title: 'Profile Screen',
                  onPressed: () => context.goNamed(AUTH_PROFILE_SCREEN)),
              RoundedButton(
                  title: 'Test Crashlytics log',
                  onPressed: () {
                    try {
                      throw Exception('Exception thrown when button pressed');
                    } catch (e, stacktrace) {
                      FirebaseCrashlytics.instance.recordError(
                          'Pressing the button is throwing an error',
                          stacktrace,
                          fatal: true);
                    }
                  }),
              RoundedButton(
                  title: 'Create Dummy User', onPressed: createDummyUser)
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
    );
    await usersRef.add(user);
    debugPrint('User saved');
  }
}

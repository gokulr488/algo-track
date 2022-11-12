import 'package:algo_track/common/constants.dart';
import 'package:algo_track/components/base_screen.dart';
import 'package:algo_track/components/responsive.dart';
import 'package:algo_track/components/rounded_button.dart';
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
                  onPressed: () => context.go(NFC_TEST_SCREEN)),
              RoundedButton(
                  title: 'Profile Screen',
                  onPressed: () => context.go(AUTH_PROFILE_SCREEN))
            ],
          ),
          desktop: Column()),
    );
  }
}

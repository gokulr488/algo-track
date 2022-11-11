import 'package:algo_track/common/constants.dart';
import 'package:algo_track/components/base_screen.dart';
import 'package:algo_track/components/responsive.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        headerText: 'Welcome',
        child: Responsive(
            mobile: Column(
              children: [
                const SignInScreen(),
                RoundedButton(
                    title: 'Nfc Test',
                    onPressed: () => context.go('/$NFC_TEST_SCREEN'))
              ],
            ),
            desktop: Column(children: const [Text('Web under development')])));
  }

  final mfaAction = AuthStateChangeAction<MFARequired>((context, state) async {
    await startMFAVerification(resolver: state.resolver, context: context);
    context.go('/$DASHBOARD_SCREEN');
  });

  bool get isLoggedIn {
    final auth = FirebaseAuth.instance;
    if (auth.currentUser == null ||
        (!auth.currentUser!.emailVerified && auth.currentUser!.email != null)) {
      return false;
    }
    return true;
  }
}

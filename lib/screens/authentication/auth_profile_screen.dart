import 'package:algo_track/common/constants.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      actions: [
        SignedOutAction((context) {
          context.goNamed(WELCOME_SCREEN);
        }),
        AuthStateChangeAction<MFARequired>((context, state) async {
          await startMFAVerification(
              resolver: state.resolver, context: context);
          // ignore: use_build_context_synchronously
          context.goNamed(DASHBOARD_SCREEN);
        }),
      ],
      actionCodeSettings: actionCodeSettings,
      showMFATile: true,
    );
  }
}

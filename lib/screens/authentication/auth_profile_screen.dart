import 'package:algo_track/common/constants.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthProfileScreen extends StatelessWidget {
  final mfaAction = AuthStateChangeAction<MFARequired>((context, state) async {
    await startMFAVerification(resolver: state.resolver, context: context);
    context.go('/$DASHBOARD_SCREEN');
  });

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      actions: [
        SignedOutAction((context) {
          context.go(WELCOME_SCREEN);
        }),
        mfaAction,
      ],
      actionCodeSettings: actionCodeSettings,
      showMFATile: true,
    );
  }
}

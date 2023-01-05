import 'package:algo_track/common/constants.dart';
import 'package:algo_track/screens/authentication/authentication_controller.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EmailVerificationScreen(
      // headerBuilder: Icon(Icons.verified) ,
      // sideBuilder: sideIcon(Icons.verified),
      actionCodeSettings: actionCodeSettings,
      actions: [
        EmailVerifiedAction(() {
          AuthenticationController().verifyUser(context);
        }),
        AuthCancelledAction((context) {
          FirebaseUIAuth.signOut(context: context);
          context.goNamed(WELCOME_SCREEN);
        }),
      ],
    );
  }
}

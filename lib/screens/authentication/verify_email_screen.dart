import 'package:algo_track/common/constants.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

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
          Navigator.pushReplacementNamed(context, '/profile');
        }),
        AuthCancelledAction((context) {
          FirebaseUIAuth.signOut(context: context);
          Navigator.pushReplacementNamed(context, '/');
        }),
      ],
    );
  }
}

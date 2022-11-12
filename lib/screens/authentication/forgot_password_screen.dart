import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key, required this.arguments});

  final Map<String, dynamic>? arguments;

  @override
  Widget build(BuildContext context) {
    return ForgotPasswordScreen(
      email: arguments?['email'],
      headerMaxExtent: 200,
      // headerBuilder: headerIcon(Icons.lock),
      // sideBuilder: sideIcon(Icons.lock),
    );
  }
}

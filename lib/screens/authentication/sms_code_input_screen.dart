import 'package:algo_track/common/constants.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SmsInputScreen extends StatelessWidget {
  const SmsInputScreen({required this.arguments});
  final Map<String, dynamic>? arguments;

  @override
  Widget build(BuildContext context) {
    return SMSCodeInputScreen(
      actions: [
        AuthStateChangeAction<SignedIn>((context, state) {
          context.goNamed(DASHBOARD_SCREEN);
        })
      ],
      flowKey: arguments?['flowKey'],
      action: arguments?['action'],
      // headerBuilder: headerIcon(Icons.sms_outlined),
      // sideBuilder: sideIcon(Icons.sms_outlined),
    );
  }
}

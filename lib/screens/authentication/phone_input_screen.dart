import 'package:algo_track/common/constants.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PhoneInputWidget extends StatelessWidget {
  const PhoneInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PhoneInputScreen(
      actions: [
        SMSCodeRequestedAction((context, action, flowKey, phone) {
          context.go(SMS_SCREEN, extra: {
            'action': action,
            'flowKey': flowKey,
            'phone': phone,
          });
        }),
      ],
      // headerBuilder: headerIcon(Icons.phone),
      // sideBuilder: sideIcon(Icons.phone),
    );
  }
}

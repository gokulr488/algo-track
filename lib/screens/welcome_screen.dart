import 'package:algo_track/common/constants.dart';
import 'package:algo_track/components/base_screen.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        headerText: 'Welcome',
        child: Column(
          children: [
            const Text('Welcome to Algol Soft'),
            RoundedButton(
                title: 'Nfc Test',
                onPressed: () => context.go('/$NFC_TEST_SCREEN'))
          ],
        ));
  }
}

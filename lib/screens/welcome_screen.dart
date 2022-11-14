import 'dart:async';

import 'package:algo_track/common/constants.dart';
import 'package:algo_track/components/base_screen.dart';
import 'package:algo_track/components/responsive.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 500), () {
      isLoggedIn ? context.go(DASHBOARD_SCREEN) : context.go(SIGN_IN_SCREEN);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        headerText: 'Welcome',
        child: Responsive(
            mobile: Column(
              children: [
                const Text('Welcome to Algo Track'),
                RoundedButton(
                    title: 'Proceed',
                    onPressed: () => context.go(SIGN_IN_SCREEN))
              ],
            ),
            desktop: Column(children: const [Text('Web under development')])));
  }

  bool get isLoggedIn {
    final auth = FirebaseAuth.instance;
    if (auth.currentUser == null ||
        (!auth.currentUser!.emailVerified && auth.currentUser!.email != null)) {
      return false;
    }
    return true;
  }
}

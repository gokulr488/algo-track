import 'dart:async';

import 'package:algo_track/common/constants.dart';
import 'package:algo_track/components/base_screen.dart';
import 'package:algo_track/components/responsive.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 500), () {
      isLoggedIn ? context.go(DASHBOARD_SCREEN) : context.go(SIGN_IN_SCREEN);
    });
    return BaseScreen(
        headerText: 'Welcome',
        child: Responsive(
            mobile: Column(
              children: const [Text('Welcome to Algo Track')],
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

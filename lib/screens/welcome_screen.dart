import 'dart:async';

import 'package:algo_track/common/constants.dart';
import 'package:algo_track/components/base_screen.dart';
import 'package:algo_track/components/cards/button_card.dart';
import 'package:algo_track/components/responsive.dart';
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
      // isLoggedIn ? context.goNamedNamed(DASHBOARD_SCREEN) : context.goNamed(SIGN_IN_SCREEN);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        headerText: 'Welcome',
        child: Responsive(
            mobile: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Expanded(
                    child: ButtonCard(
                      icon: Icons.add_business,
                      text: 'Create a Company',
                      onTap: () => context.goNamed(CREATE_COMPANY_SCREEN),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: ButtonCard(
                      icon: Icons.account_circle_outlined,
                      text: 'Login to Company',
                      onTap: () => context.goNamed(SIGN_IN_SCREEN),
                    ),
                  ),
                ],
              ),
            ),
            desktop: web));
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

import 'package:algo_track/common/constants.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmailSignInWidget extends StatelessWidget {
  final emailLinkProviderConfig = EmailLinkAuthProvider(
    actionCodeSettings: actionCodeSettings,
  );

  @override
  Widget build(BuildContext context) {
    return EmailLinkSignInScreen(
      actions: [
        AuthStateChangeAction<SignedIn>((context, state) {
          context.goNamed(
              DASHBOARD_SCREEN); // TODO check if this should be welcome page or dashboard
        }),
      ],
      provider: emailLinkProviderConfig,
      headerMaxExtent: 200,
      // headerBuilder: headerIcon(Icons.link),
      // sideBuilder: sideIcon(Icons.link),
    );
  }
}

import 'package:algo_track/common/constants.dart';
import 'package:algo_track/components/alerts.dart';
import 'package:algo_track/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as fba;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthenticationController {
  verifyUser(BuildContext context) {
    fba.User? authUser = fba.FirebaseAuth.instance.currentUser;
    usersRef
        .whereEmailId(isEqualTo: authUser?.email)
        .get()
        .then((UserQuerySnapshot value) {
      if (value.docs.length == 1) {
        value.docs.first.reference
            .update(authUid: authUser?.uid)
            .then((value) => context.goNamed(DASHBOARD_SCREEN));
      }
    });
  }
}

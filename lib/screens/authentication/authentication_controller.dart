import 'package:algo_track/common/constants.dart';
import 'package:algo_track/components/alerts.dart';
import 'package:algo_track/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as fba;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthenticationController {
  verifyUser(BuildContext context, state) {
    fba.User authUser = state.userSnapshot!;
    usersRef
        .whereEmailId(isEqualTo: authUser.email)
        .get()
        .then((UserQuerySnapshot value) {
      if (value.docs.length == 1) {
        //UiState uiState = Provider.of<UiState>(context, listen: false);
        User user = value.docs.first.data;
        if (user.authUid == null) {
          value.docs.first.reference.update(authUid: authUser.uid);
          context.goNamed(DASHBOARD_SCREEN);
        } else if (user.authUid != authUser.uid) {
          showErrorAlert(context, 'Invalid User. Contact Admin');
          fba.FirebaseAuth.instance.signOut();
        } else {
          context.goNamed(DASHBOARD_SCREEN);
        }
      }
    });
  }
}

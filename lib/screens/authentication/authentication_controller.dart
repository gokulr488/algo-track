import 'package:algo_track/common/constants.dart';
import 'package:algo_track/common/ui_state.dart';
import 'package:algo_track/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as fba;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class AuthenticationController {
  verifyUser(BuildContext context, state) {
    fba.User authUser = state.user!;
    usersRef
        .whereEmailId(isEqualTo: authUser.email)
        .get()
        .then((UserQuerySnapshot value) {
      if (value.docs.isNotEmpty && value.docs.length == 1) {
        UiState uiState = Provider.of<UiState>(context, listen: false);
        User user = value.docs.first.data;
        uiState.user = user;
        context.goNamed(DASHBOARD_SCREEN);
      }
    });
  }
}

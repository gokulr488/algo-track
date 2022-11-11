// ignore_for_file: constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';

const String WELCOME_SCREEN = '/';
const String NFC_TEST_SCREEN = 'nfcTest';
const String DASHBOARD_SCREEN = 'dashboard';
const String SIGN_IN_SCREEN = 'signIn';

final actionCodeSettings = ActionCodeSettings(
  url: 'https://flutterfire-e2e-tests.firebaseapp.com',
  handleCodeInApp: true,
  androidMinimumVersion: '1',
  androidPackageName: 'com.algols.algo_track',
  iOSBundleId: 'io.flutter.plugins.fireabaseUiExample',
);

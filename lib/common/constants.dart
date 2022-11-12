// ignore_for_file: constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';

const String WELCOME_SCREEN = '/';
const String NFC_TEST_SCREEN = 'nfcTest';
const String DASHBOARD_SCREEN = 'dashboard';
const String SIGN_IN_SCREEN = 'signIn';
const String VERIFY_EMAIL_SCREEN = 'verifyEmail';
const String PHONE_SCREEN = 'phone';
const String SMS_SCREEN = 'sms';
const String FORGOT_PASSWORD_SCREEN = 'forgotPassword';
const String EMAIL_SIGN_IN_SCREEN = 'emailSignIn';
const String AUTH_PROFILE_SCREEN = 'authProfile';

final actionCodeSettings = ActionCodeSettings(
  url: 'https://flutterfire-e2e-tests.firebaseapp.com',
  handleCodeInApp: true,
  androidMinimumVersion: '21',
  androidPackageName: 'com.algols.algo_track',
  iOSBundleId: 'com.algols.algoTrack',
);

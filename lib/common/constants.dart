// ignore_for_file: constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';

const String WELCOME_SCREEN = '/';
const String DASHBOARD_SCREEN = '/dash';
const String NFC_TEST_SCREEN = '$DASHBOARD_SCREEN/$nfc';
const String SIGN_IN_SCREEN = '$WELCOME_SCREEN$signIn';
const String VERIFY_EMAIL_SCREEN = '$WELCOME_SCREEN$verifyEmail';
const String PHONE_SCREEN = '$WELCOME_SCREEN$phone';
const String SMS_SCREEN = '$WELCOME_SCREEN$sms';
const String FORGOT_PASSWORD_SCREEN = '$WELCOME_SCREEN$forgotPassword';
const String EMAIL_SIGN_IN_SCREEN = '$WELCOME_SCREEN$emailSignIn';
const String AUTH_PROFILE_SCREEN = '$DASHBOARD_SCREEN/$authProfile';
//TODO above routes need to be properly planned according to authentication flow sequence

const String nfc = 'nfcTest';
const String signIn = 'signIn';
const String verifyEmail = 'verifyEmail';
const String phone = 'phone';
const String sms = 'sms';
const String forgotPassword = 'forgotPassword';
const String emailSignIn = 'emailSignIn';
const String authProfile = 'authProfile';

final actionCodeSettings = ActionCodeSettings(
  url: 'https://flutterfire-e2e-tests.firebaseapp.com',
  handleCodeInApp: true,
  androidMinimumVersion: '21',
  androidPackageName: 'com.algols.algo_track',
  iOSBundleId: 'com.algols.algoTrack',
);

const String googleClientId =
    '279750973519-cou0um32mfdjipcdquvd68ekj367k3pu.apps.googleusercontent.com';

const String googleClientSecret = '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';

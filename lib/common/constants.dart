// ignore_for_file: constant_identifier_names

import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:json_annotation/json_annotation.dart';

const String WELCOME_SCREEN = '/';
const String DASHBOARD_SCREEN = '/dash';
const String NFC_TEST_SCREEN = '$DASHBOARD_SCREEN/$nfc';
const String SIGN_IN_SCREEN = '$WELCOME_SCREEN$signIn';
const String VERIFY_EMAIL_SCREEN = '$SIGN_IN_SCREEN/$verifyEmail';
const String PHONE_SCREEN = '$SIGN_IN_SCREEN/$phone';
const String SMS_SCREEN = '$PHONE_SCREEN/$sms';
const String FORGOT_PASSWORD_SCREEN = '$SIGN_IN_SCREEN/$forgotPassword';
const String EMAIL_SIGN_IN_SCREEN = '$SIGN_IN_SCREEN/$emailSignIn';
const String AUTH_PROFILE_SCREEN = '$DASHBOARD_SCREEN/$authProfile';

const String nfc = 'nfcTest';
const String signIn = 'signIn';
const String verifyEmail = 'verifyEmail';
const String phone = 'phone';
const String sms = 'sms';
const String forgotPassword = 'forgotPassword';
const String emailSignIn = 'emailSignIn';
const String authProfile = 'authProfile';

final actionCodeSettings = ActionCodeSettings(
  url: 'https://algotrack.page.link',
  handleCodeInApp: true,
  androidMinimumVersion: '21',
  androidPackageName: 'com.algols.algo_track',
  iOSBundleId: 'com.algols.algoTrack',
);

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  // The following values could alternatively be set inside your `build.yaml`
  explicitToJson: true,
  createFieldMap: true,
);

// ignore_for_file: constant_identifier_names

import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

const String WELCOME_SCREEN = 'welcome';
const String DASHBOARD_SCREEN = 'dashboard';
const String NFC_TEST_SCREEN = 'nfc';
const String SIGN_IN_SCREEN = 'signIn';
const String VERIFY_EMAIL_SCREEN = 'verifyEmail';
const String PHONE_SCREEN = 'phone';
const String SMS_SCREEN = 'sms';
const String FORGOT_PASSWORD_SCREEN = 'forgotPassword';
const String EMAIL_SIGN_IN_SCREEN = 'emailSignIn';
const String AUTH_PROFILE_SCREEN = 'authProfile';
const String CREATE_COMPANY_SCREEN = 'createCompany';
const String LEAVE_REQUEST = 'leaveRequest';
const String ADD_LEAVE = 'addLeave';
const String DATE_PICKER = 'datePicker';
const String DATE_SUBMIT = 'datesubmit';
const String STAT_VIEWER = 'statusviewer';

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

Widget web = Column(children: const [Text('Web under development')]);

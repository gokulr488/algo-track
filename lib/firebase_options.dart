// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBMm4N7zs1v6M0ZxuutBwxtSLXxob1F-IU',
    appId: '1:279750973519:web:2d57c9e15babfe2e3c723a',
    messagingSenderId: '279750973519',
    projectId: 'algotrack-35fd7',
    authDomain: 'algotrack-35fd7.firebaseapp.com',
    storageBucket: 'algotrack-35fd7.appspot.com',
    measurementId: 'G-YS1N0QGGSB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDT9k8xOYyeO_TVCluoqLQr6tsGEYkwdJ4',
    appId: '1:279750973519:android:4669ea1dca1c129b3c723a',
    messagingSenderId: '279750973519',
    projectId: 'algotrack-35fd7',
    storageBucket: 'algotrack-35fd7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4BXzlHkKr_V5MNDN26XbDj4Kmxcz4_F8',
    appId: '1:279750973519:ios:8d09c2872cbc4e353c723a',
    messagingSenderId: '279750973519',
    projectId: 'algotrack-35fd7',
    storageBucket: 'algotrack-35fd7.appspot.com',
    androidClientId: '279750973519-a8asmbo4fsuv521iuhec5ao3f06jcoif.apps.googleusercontent.com',
    iosClientId: '279750973519-4mbq2eqhm9f070vvluja2cq7tucfuc9n.apps.googleusercontent.com',
    iosBundleId: 'com.algols.algoTrack',
  );
}

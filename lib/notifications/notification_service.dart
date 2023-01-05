import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

void initNotifications() {
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    debugPrint('Got a message whilst in the foreground!');
    debugPrint('Message data: ${message.data}');

    if (message.notification != null) {
      debugPrint(
          'Message also contained a notification: ${message.notification}');
    }
  });
}

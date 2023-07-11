import 'package:flutter/material.dart';

class BannerNotification extends StatelessWidget {
  final String message;

  const BannerNotification({required this.message});

  @override
  Widget build(BuildContext context) {
    return Banner(
      message: message,
      location: BannerLocation.topEnd,
      color: Colors.blue,
      child: Container(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String notificationMessage = '';

  void showBannerNotification(String message) {
    setState(() {
      notificationMessage = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Banner Notification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showBannerNotification('Hello, world!');
              },
              child: const Text('Show Banner Notification'),
            ),
            const SizedBox(height: 16),
            // BannerNotification(message: notificationMessage),
          ],
        ),
      ),
    );
  }
}

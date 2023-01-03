import 'package:algo_track/components/loading_dots.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Alerts extends StatelessWidget {
  final String title;
  final List<Widget> actions;

  Alerts({
    required this.title,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text(title),
        actions: actions,
        shape: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))));
  }
}

void showSendingDialogue(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Alerts(
        title: 'Submitting...',
        actions: const [LoadingDots(size: 50)],
      );
    },
  );
}

void showSubmitResponse(BuildContext context, String resp) {
  showDialog(
    context: context,
    builder: (context) {
      return Alerts(
        title: resp,
        actions: [
          TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'))
        ],
      );
    },
  );
}

void showConfirmationDialog(BuildContext context,
    {String? confirmationText, required Function onConfirmed}) {
  showDialog(
      context: context,
      builder: (context) {
        return Alerts(title: confirmationText ?? '', actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('NO')),
          TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                onConfirmed();
              },
              child: const Text('YES'))
        ]);
      });
}

void showErrorAlert(BuildContext context, String errorMessage) {
  showDialog(
    context: context,
    builder: (context) {
      return Alerts(
        title: 'ERROR',
        actions: [
          Text(errorMessage, style: const TextStyle(fontSize: 18)),
          TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'))
        ],
      );
    },
  );
}

void showSilentAlerts(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0);
}

void showWarning(BuildContext context, String errorMessage) {
  showDialog(
    context: context,
    builder: (context) {
      return Alerts(
        title: 'WARNING!!',
        actions: [
          Text(errorMessage, style: const TextStyle(fontSize: 18)),
          TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'))
        ],
      );
    },
  );
}

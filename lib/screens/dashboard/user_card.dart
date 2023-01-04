import 'package:algo_track/components/alerts.dart';
import 'package:algo_track/components/cards/base_card.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:algo_track/models/enums/user_status.dart';
import 'package:algo_track/models/user.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BaseCard(
        elevation: 20,
        //onTap: () {},
        cardChild: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.account_circle,
              size: 50,
            ),
            Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: getStatusColor(),
                  shape: BoxShape.circle,
                )),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(user.userName),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: RoundedButton(
                  title: 'Request Support',
                  onPressed: () => onPressed(context),
                  width: 20),
            ),
          ],
        ),
      ),
    );
  }

  Color getStatusColor() {
    switch (user.userStatus) {
      case UserStatus.AVAILABLE:
        return Colors.green;

      case UserStatus.AWAY:
        return Colors.orange;

      case UserStatus.BUSY:
        return Colors.red;

      case UserStatus.ON_LEAVE:
        return Colors.white;

      default:
        return Colors.white;
    }
  }

  onPressed(BuildContext context) {
    if (user.userStatus == UserStatus.AVAILABLE) {
      debugPrint('Requesting...');
    } else {
      showWarning(context, '${user.userName} is not available');
    }
  }
}

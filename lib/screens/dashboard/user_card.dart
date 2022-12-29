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
    return BaseCard(
      elevation: 20,
      //onTap: () {},
      cardChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.account_circle,
            size: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(user.userName),
          ),
          Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                color: getStatusColor(),
                shape: BoxShape.circle,
              )),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: RoundedButton(
                title: 'Request Support',
                onPressed: () => onPressed(context),
                width: 20),
          ),
        ],
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
      print('Requesting...');
    } else {
      showWarning(context, '${user.userName} is not available');
    }
  }
}

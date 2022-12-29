import 'package:algo_track/components/base_screen.dart';
import 'package:algo_track/components/drop_down.dart';
import 'package:algo_track/components/responsive.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:algo_track/components/scrollable_list.dart';
import 'package:algo_track/models/enums/user_status.dart';
import 'package:algo_track/models/enums/user_type.dart';
import 'package:algo_track/models/user.dart';
import 'package:algo_track/screens/dashboard/dashboard_screen_controller.dart';
import 'package:algo_track/screens/dashboard/start_work.dart';
import 'package:algo_track/screens/dashboard/user_card.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  DashBoardScreenController ctrl = DashBoardScreenController();

  @override
  void initState() {
    super.initState();
    ctrl.getData(context);
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      headerText: 'Dashboard',
      child: Responsive(
          mobile: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StartWork(),
              Expanded(
                child: ScrollableList(items: [
                  UserCard(
                    user: User(
                      companyId: '',
                      userName: 'Amritha',
                      emailId: '',
                      phoneNumber: '',
                      userStatus: UserStatus.BUSY,
                      userType: UserType.ADMIN,
                    ),
                  )
                ], childrenHeight: 60),
              ),
            ],
          ),
          desktop: Column()),
    );
  }
}

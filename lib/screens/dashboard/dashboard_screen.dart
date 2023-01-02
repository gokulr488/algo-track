import 'package:algo_track/common/constants.dart';
import 'package:algo_track/components/base_screen.dart';
import 'package:algo_track/components/responsive.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:algo_track/components/scrollable_list.dart';
import 'package:algo_track/screens/dashboard/dashboard_screen_controller.dart';
import 'package:algo_track/screens/dashboard/start_work.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.account_circle),
          onPressed: () => context.goNamed(AUTH_PROFILE_SCREEN)),
      child: Responsive(
          mobile: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StartWork(),
              Expanded(
                child: ScrollableList(
                    items: ctrl.getUserCards(context), childrenHeight: 60),
              )
            ],
          ),
          desktop: Column()),
    );
  }
}

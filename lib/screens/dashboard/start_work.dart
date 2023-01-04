import 'package:algo_track/common/app_state.dart';
import 'package:algo_track/common/ui_state.dart';
import 'package:algo_track/components/drop_down.dart';
import 'package:algo_track/components/loading_dots.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:algo_track/screens/dashboard/dashboard_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartWork extends StatelessWidget {
  final DashBoardScreenController ctrl = DashBoardScreenController();
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
        builder: (BuildContext context, AppState appState, _) {
      return Column(
        children: [
          appState.allProjects != null
              ? DropDown(
                  onChanged: (value) =>
                      DashBoardScreenController.selectedProject = value,
                  hintText: 'Project Name',
                  values: appState.allProjects)
              : const LoadingDots(size: 50),
          appState.allUsers != null
              ? DropDown(
                  onChanged: (value) =>
                      DashBoardScreenController.assistingUser = value,
                  hintText: 'Assisting who ',
                  values: appState.allUsers)
              : const LoadingDots(size: 50),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: appState.timeLog == null
                  ? RoundedButton(
                      width: 200,
                      title: 'Start Work',
                      onPressed: () => ctrl.onStartWorkPressed(context),
                    )
                  : RoundedButton(
                      width: 200,
                      colour: Theme.of(context).colorScheme.errorContainer,
                      title: 'Stop Work',
                      onPressed: () => ctrl.onStopWorkPressed(context),
                    ))
        ],
      );
    });
  }
}

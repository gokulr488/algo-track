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
    return Consumer<UiState>(
        builder: (BuildContext context, UiState uiState, _) {
      return Column(
        children: [
          uiState.allProjects != null
              ? DropDown(
                  onChanged: (value) =>
                      DashBoardScreenController.selectedProject = value,
                  hintText: 'Project Name',
                  values: uiState.allProjects)
              : const LoadingDots(size: 50),
          uiState.allUsers != null
              ? DropDown(
                  onChanged: (value) =>
                      DashBoardScreenController.assistingUser = value,
                  hintText: 'Assisting who ',
                  values: uiState.allUsers)
              : const LoadingDots(size: 50),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedButton(
                title: 'Start Work',
                onPressed: () => ctrl.onStartWorkPressed(context),
              ))
        ],
      );
    });
  }
}

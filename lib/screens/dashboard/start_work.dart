import 'package:algo_track/common/ui_state.dart';
import 'package:algo_track/components/drop_down.dart';
import 'package:algo_track/components/loading_dots.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UiState>(
        builder: (BuildContext context, UiState uiState, _) {
      return Column(
        children: [
          uiState.allProjects != null
              ? DropDown(
                  onChanged: (value) {},
                  defaultValue: uiState.allProjects?.first,
                  hintText: 'Project Name',
                  values: uiState.allProjects)
              : const LoadingDots(size: 50),
          uiState.allUsers != null
              ? DropDown(
                  onChanged: (value) {
                    debugPrint(value.id);
                  },
                  defaultValue: uiState.allUsers?.first,
                  hintText: 'Assisting who ',
                  values: uiState.allUsers)
              : const LoadingDots(size: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RoundedButton(title: 'Start Work', onPressed: () {}),
          )
        ],
      );
    });
  }
}

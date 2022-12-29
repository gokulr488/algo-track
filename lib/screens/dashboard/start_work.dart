import 'package:algo_track/components/cards/base_card.dart';
import 'package:algo_track/components/drop_down.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:flutter/material.dart';

class StartWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          DropDown(
              onChanged: (value) {},
              defaultValue: 'Algo Track',
              hintText: 'Project Name',
              values: ['Algo Bot', 'ESB', 'Algo Track', 'Teranet']),
          DropDown(
              onChanged: (value) {},
              defaultValue: 'Gokul',
              hintText: 'Assisting who ',
              values: ['Gokul', 'Ganesh', 'Aravind', 'Amritha']),
        ],
      ),
    );
  }
}

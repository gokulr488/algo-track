import 'package:algo_track/components/drop_down.dart';
import 'package:algo_track/components/rounded_button.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../common/constants.dart';

class AddLeave extends StatelessWidget {
  const AddLeave({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Leave Request'),
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropDown(
                  hintText: 'Choose a leave type',
                  onChanged: (value) {
                    print(value);
                  },
                  values: const ['Full day', 'Half day', 'Casual']),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: 380.0,
                  child: OutlinedButton(
                      onPressed: () => context.goNamed(DATE_PICKER),
                      child: const Text('click to choose date'))),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 380,
                // child: new Flexible(
                child: TextFormField(
                  maxLines: null,
                  minLines: 7,
                  decoration: const InputDecoration(
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(),
                    labelText: 'Reason for leave',
                  ),
                ),
                // ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      child: RoundedButton(
                    width: 150,
                    onPressed: () => context.goNamed(LEAVE_REQUEST),
                    title: 'Submit',
                  )),
                  SizedBox(
                      child: RoundedButton(
                    width: 150,
                    onPressed: () => context.goNamed(DASHBOARD_SCREEN),
                    title: 'Cancel',
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

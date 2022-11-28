import 'package:algo_track/common/ui_constants.dart';
import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget(
      {required this.fieldName, required this.controller, this.onChanged});
  final String fieldName;
  final TextEditingController controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        decoration: kTextFieldDecoration(Theme.of(context))
            .copyWith(labelText: fieldName),
      ),
    );
  }
}

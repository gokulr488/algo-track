import 'package:algo_track/common/ui_constants.dart';
import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  const DropDown(
      {required this.onChanged,
      this.defaultValue,
      required this.values,
      this.hintText});
  final Function(dynamic) onChanged;
  final dynamic defaultValue;
  final List<dynamic>? values;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: DropdownButtonFormField<dynamic>(
        icon: Icon(
          Icons.arrow_drop_down_circle_outlined,
          color: Theme.of(context).colorScheme.secondary,
        ),
        iconSize: 25,
        decoration: kTextFieldDecoration(Theme.of(context))
            .copyWith(labelText: hintText ?? ''),
        value: defaultValue,
        onChanged: onChanged,
        items: values
            ?.map((dynamic value) => DropdownMenuItem<dynamic>(
                value: value,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(value.toString()),
                    const Icon(Icons.personal_injury)
                  ],
                )))
            .toList(),
      ),
    );
  }
}

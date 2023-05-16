import 'package:algo_track/common/utils.dart';
import 'package:algo_track/components/base_screen.dart';
import 'package:algo_track/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common/constants.dart';

class DateTimePickerWidget extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _DateTimePickerWidgetState createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  DateTime selectedDatefrom = DateTime.now();
  DateTime selectedDatetill = DateTime.now();

  Future<void> _selectDatefrom(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDatefrom,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDatefrom) {
      setState(() {
        selectedDatefrom = picked;
      });
    }
  }

  Future<void> _selectedDatetill(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDatetill,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDatetill) {
      setState(() {
        selectedDatetill = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        headerText: 'Date',
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Text('From date', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 10),
              Row(children: [
                Expanded(
                  child: Text(
                    Utils.getFormattedDate(selectedDatefrom, 'yyyy-MM-dd'),
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () => _selectDatefrom(context),
                    child: const Text('choose date')),
              ]),
              const Text(
                'Till date:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      '${selectedDatetill.toLocal()}'.split(' ')[0],
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () => _selectedDatetill(context),
                    child: const Text('choose date'),
                  ),
                ],
              ),
              SizedBox(
                  width: 150,
                  child: RoundedButton(
                    onPressed: () => context.goNamed(ADD_LEAVE),
                    title: 'submit',
                  ))
            ],
          ),
        ));
  }
}

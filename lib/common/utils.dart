import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Utils {
  static String getFormattedDate(DateTime date, String format) {
    final DateFormat formatter = DateFormat(format);
    return formatter.format(date);
  }

  static Future<DateTime> pickDate(BuildContext context,
      {DateTime? selectedDate}) async {
    final DateTime? picked = await showDatePicker(
        //initialDatePickerMode: DatePickerMode.year,
        context: context,
        initialDate: selectedDate ?? DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2100));
    if (picked != null) {
      return picked;
    }
    return selectedDate ?? DateTime.now();
  }

  static DateTime getStartOfMonth(DateTime dayOfMonth) {
    final DateTime start = DateTime(dayOfMonth.year, dayOfMonth.month);
    return start;
  }

  static DateTime getEndOfMonth(DateTime dayOfMonth) {
    final int millis =
        DateTime(dayOfMonth.year, dayOfMonth.month + 1).millisecondsSinceEpoch -
            1;
    final DateTime end = DateTime.fromMillisecondsSinceEpoch(millis);
    return end;
  }

  static final NumberFormat curFormat = NumberFormat('##,##,##,##0.00');

  static String formatDouble(double? value) {
    if (value == null) return '0.00';
    return curFormat.format(value);
  }

  static String formatInt(int? value) {
    if (value == null) return '0';
    return value.toStringAsFixed(0);
  }
}

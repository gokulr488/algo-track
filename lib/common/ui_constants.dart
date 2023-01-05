// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const List<Shadow> shadow = <Shadow>[
  Shadow(offset: Offset(2, 2), blurRadius: 3)
];

const Duration kAnimDuraction = Duration(milliseconds: 350);
const Cubic kAnimCurve = Curves.easeOut;

InputDecoration kTextFieldDecoration(ThemeData theme) {
  return InputDecoration().applyDefaults(theme.inputDecorationTheme);
}

InputDecorationTheme kTextFieldDecorationTheme(Color color) {
  return InputDecorationTheme(
    labelStyle: const TextStyle(fontSize: 14),
    hintStyle: const TextStyle(fontSize: 17),
    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(22))),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: color.withOpacity(0.3)),
      borderRadius: BorderRadius.all(Radius.circular(22)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: color.withOpacity(0.5), width: 2),
      borderRadius: BorderRadius.all(Radius.circular(22)),
    ),
  );
}

const InputDecoration kDropDownDecoration = InputDecoration(
    labelStyle: TextStyle(
      fontSize: 18,
      //color: kHighlightColour,
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0x00000000)),
      borderRadius: BorderRadius.all(Radius.circular(25)),
    ));

final buttonStyle = ButtonStyle(
  padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
);

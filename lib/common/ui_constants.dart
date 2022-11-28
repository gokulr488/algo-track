// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Color green = const Color(0xFF0ECB81).withOpacity(0.6);
Color red = const Color(0xFFF6465D).withOpacity(0.6);

const List<Shadow> shadow = <Shadow>[
  Shadow(offset: Offset(2, 2), blurRadius: 3)
];

const Duration kAnimDuraction = Duration(milliseconds: 350);
const Cubic kAnimCurve = Curves.easeOut;

InputDecoration kTextFieldDecoration = InputDecoration(
  labelStyle: const TextStyle(fontSize: 14),
  hintStyle: const TextStyle(fontSize: 14),
  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  border: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(22))),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: red),
    borderRadius: BorderRadius.all(Radius.circular(22)),
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFd84315), width: 2),
    borderRadius: BorderRadius.all(Radius.circular(22)),
  ),
);

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

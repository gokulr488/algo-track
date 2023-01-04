import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {required this.title,
      this.colour,
      required this.onPressed,
      this.width,
      this.elevation,
      this.fontSize});

  final Color? colour;
  final String title;
  final double? width;
  final Function() onPressed;
  final double? elevation;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: elevation ?? 5,
        color: colour ?? Theme.of(context).colorScheme.inversePrimary,
        borderRadius: BorderRadius.circular(45),
        child: MaterialButton(
            onPressed: onPressed,
            minWidth: width ?? MediaQuery.of(context).size.width * 0.75,
            height: 45,
            child: Text(title,
                style: TextStyle(
                    fontSize: fontSize ?? 18, fontWeight: FontWeight.bold))));
  }
}

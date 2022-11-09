import 'package:flutter/material.dart';

class HorLine extends StatelessWidget {
  const HorLine();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: Theme.of(context).colorScheme.tertiary,
      margin: const EdgeInsets.symmetric(vertical: 10),
    );
  }
}

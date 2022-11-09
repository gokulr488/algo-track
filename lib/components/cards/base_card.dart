import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard(
      {this.onTap, required this.cardChild, this.color, this.elevation});
  final Function? onTap;
  final Widget cardChild;
  final Color? color;
  final double? elevation;

  @override
  InkWell build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap!();
      },
      child: Card(
        color: color ?? Theme.of(context).colorScheme.secondaryContainer,
        elevation: elevation ?? 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: cardChild,
        ),
      ),
    );
  }
}

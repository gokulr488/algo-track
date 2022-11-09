import 'package:algo_track/components/cards/base_card.dart';
import 'package:flutter/material.dart';

class DatePicker extends StatelessWidget {
  const DatePicker({required this.onTap, required this.text, this.label});
  final Function onTap;
  final String text;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (label != null)
            Text(label!,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          BaseCard(
            cardChild: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(text, style: const TextStyle(fontSize: 16)),
                  Icon(Icons.date_range,
                      color: Theme.of(context).colorScheme.secondary, size: 30)
                ],
              ),
            ),
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}

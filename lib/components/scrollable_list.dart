import 'package:flutter/material.dart';

class ScrollableList extends StatelessWidget {
  const ScrollableList(
      {required this.items,
      required this.childrenHeight,
      this.scrollController,
      required this.onRefresh});
  final List<Widget> items;
  final double childrenHeight;
  final ScrollController? scrollController;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView.builder(
        //padding: const EdgeInsets.all(8),
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: items.length,
        controller: scrollController,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: childrenHeight,
            child: items[index],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  final List<GButton> tabs;
  final void Function(int)? onTabChange;

  const NavBar({super.key, required this.tabs, this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
        onTabChange: onTabChange,
        rippleColor: Theme.of(context).colorScheme.onError,
        haptic: true,
        tabBorderRadius: 20,
        duration: const Duration(milliseconds: 500),
        gap: 8,
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.7),
        activeColor: Theme.of(context).colorScheme.primary,
        iconSize: 24,
        tabBackgroundColor: Theme.of(context).colorScheme.primaryContainer,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tabs: tabs);
  }
}

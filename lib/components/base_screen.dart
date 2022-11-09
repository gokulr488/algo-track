import 'package:algo_track/common/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen(
      {this.bottomNavBar,
      required this.headerText,
      required this.child,
      this.drawer,
      this.floatingActionButton});
  final Widget child;
  final Widget? bottomNavBar;
  final String headerText;
  final Widget? drawer;
  final Widget? floatingActionButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      appBar: headerText.isEmpty
          ? null
          : AppBar(
              toolbarHeight: 45,
              iconTheme: IconThemeData(
                  color: Theme.of(context).colorScheme.inversePrimary),
              title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      headerText,
                      style: GoogleFonts.laila(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 20,
                      ),
                    ),
                    Text('Algo Track',
                        style: GoogleFonts.dancingScript(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            shadows: shadow,
                            fontWeight: FontWeight.bold,
                            fontSize: 35))
                  ]),
            ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: child,
      ),
      bottomNavigationBar: bottomNavBar,
      floatingActionButton: floatingActionButton,
    );
  }
}

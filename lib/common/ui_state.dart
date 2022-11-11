import 'package:flutter/material.dart';

class UiState extends ChangeNotifier {
  bool _isAdmin = true;
  Brightness _themeMode = Brightness.dark;
  Color _baseColor = const Color(0xFF4db6ac);

  //GETTERS
  bool get isAdmin => _isAdmin;
  Brightness get themeMode => _themeMode;
  Color get baseColor => _baseColor;

//SETTERS
  void setIsAdmin({required bool isAdmin}) {
    _isAdmin = isAdmin;
    notifyListeners(); //uncomment this if admin switching is not happening
  }

  set baseColor(Color baseColor) {
    _baseColor = baseColor;
    notifyListeners();
  }

  void toggleTheme() {
    Brightness newTheme =
        _themeMode == Brightness.dark ? Brightness.light : Brightness.dark;
    _themeMode = newTheme;
    notifyListeners();
  }
}

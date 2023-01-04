import 'package:algo_track/models/project.dart';
import 'package:algo_track/models/time_log.dart';
import 'package:algo_track/models/user.dart';
import 'package:flutter/material.dart';

class UiState extends ChangeNotifier {
  bool _isAdmin = true;
  Brightness _themeMode = Brightness.dark;
  Color _baseColor = Colors.lightBlue;

  //GETTERS
  bool get isAdmin => _isAdmin;
  Brightness get themeMode => _themeMode;
  Color get baseColor => _baseColor;
//SETTERS
  set isAdmin(bool isAdmin) {
    _isAdmin = isAdmin;
    notifyListeners(); //uncomment this if admin switching is not happening
  }

  void updateUi() {
    notifyListeners();
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

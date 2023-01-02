import 'package:algo_track/models/project.dart';
import 'package:algo_track/models/user.dart';
import 'package:flutter/material.dart';

class UiState extends ChangeNotifier {
  bool _isAdmin = true;
  Brightness _themeMode = Brightness.dark;
  Color _baseColor = Colors.lightBlue;
  User? _user;
  List<User>? _allUsers;
  List<Project>? _allProjects;

  //GETTERS
  bool get isAdmin => _isAdmin;
  Brightness get themeMode => _themeMode;
  Color get baseColor => _baseColor;
  User? get user => _user;
  List<User>? get allUsers => _allUsers;
  List<Project>? get allProjects => _allProjects;

//SETTERS
  void setIsAdmin({required bool isAdmin}) {
    _isAdmin = isAdmin;
    notifyListeners(); //uncomment this if admin switching is not happening
  }

  void setAllUsers(List<User> users) {
    _allUsers = users;
  }

  void setAllProjects(List<Project> projects) {
    _allProjects = projects;
  }

  void updateUi() {
    notifyListeners();
  }

  set baseColor(Color baseColor) {
    _baseColor = baseColor;
    notifyListeners();
  }

  set user(User? user) {
    _user = user;
    // notifyListeners();
  }

  void toggleTheme() {
    Brightness newTheme =
        _themeMode == Brightness.dark ? Brightness.light : Brightness.dark;
    _themeMode = newTheme;
    notifyListeners();
  }
}

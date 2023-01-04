import 'package:algo_track/models/project.dart';
import 'package:algo_track/models/time_log.dart';
import 'package:algo_track/models/user.dart';
import 'package:flutter/material.dart';

class UiState extends ChangeNotifier {
  bool _isAdmin = true;
  Brightness _themeMode = Brightness.dark;
  Color _baseColor = Colors.lightBlue;
  UserQueryDocumentSnapshot? _userSnapshot;
  List<User>? _allUsers;
  List<Project>? _allProjects;
  TimeLog? _timeLog;
  TimeLogDocumentReference? timeLogSnapshot;

  //GETTERS
  bool get isAdmin => _isAdmin;
  Brightness get themeMode => _themeMode;
  Color get baseColor => _baseColor;
  UserQueryDocumentSnapshot? get userSnapshot => _userSnapshot;
  List<User>? get allUsers => _allUsers;
  List<Project>? get allProjects => _allProjects;
  TimeLog? get timeLog => _timeLog;

//SETTERS
  set isAdmin(bool isAdmin) {
    _isAdmin = isAdmin;
    notifyListeners(); //uncomment this if admin switching is not happening
  }

  set allUsers(List<User>? users) {
    _allUsers = users;
  }

  set timeLog(TimeLog? timeLog) {
    _timeLog = timeLog;
    notifyListeners();
  }

  set allProjects(List<Project>? projects) {
    _allProjects = projects;
  }

  void updateUi() {
    notifyListeners();
  }

  set baseColor(Color baseColor) {
    _baseColor = baseColor;
    notifyListeners();
  }

  set userSnapshot(UserQueryDocumentSnapshot? user) {
    _userSnapshot = user;
    // notifyListeners();
  }

  void toggleTheme() {
    Brightness newTheme =
        _themeMode == Brightness.dark ? Brightness.light : Brightness.dark;
    _themeMode = newTheme;
    notifyListeners();
  }
}

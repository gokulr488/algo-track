import 'package:algo_track/models/project.dart';
import 'package:algo_track/models/time_log.dart';
import 'package:algo_track/models/user.dart';
import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  UserQueryDocumentSnapshot? userSnapshot;
  final List<User> _allUsers = [];
  List<Project>? allProjects;
  TimeLog? timeLog;
  TimeLogDocumentReference? timeLogSnapshot;

  List<User> get allUsers => _allUsers;

  void updateUi() {
    notifyListeners();
  }

  void addUser(User user) {
    if (_allUsers.contains(user)) {
      _allUsers.remove(user);
    }
    _allUsers.add(user);
  }
}

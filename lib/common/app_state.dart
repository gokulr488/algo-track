import 'package:algo_track/models/project.dart';
import 'package:algo_track/models/time_log.dart';
import 'package:algo_track/models/user.dart';
import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  UserQueryDocumentSnapshot? userSnapshot;
  List<User>? allUsers;
  List<Project>? allProjects;
  TimeLog? timeLog;
  TimeLogDocumentReference? timeLogSnapshot;

  void updateUi() {
    notifyListeners();
  }
}

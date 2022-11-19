import 'package:algo_track/common/constants.dart';
import 'package:algo_track/models/enums/user_roles.dart';
import 'package:json_annotation/json_annotation.dart';

part 'current_project.g.dart';

@firestoreSerializable
class CurrentProject {
  final String projectId;
  final String projectName;
  final String userId;
  final String userName;
  final UserRole userRole;

  CurrentProject(
      {required this.projectId,
      required this.projectName,
      required this.userId,
      required this.userName,
      required this.userRole});

  factory CurrentProject.fromJson(Map<String, Object?> json) =>
      _$CurrentProjectFromJson(json);

  Map<String, Object?> toJson() => _$CurrentProjectToJson(this);
}

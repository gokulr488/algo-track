import 'package:algo_track/common/constants.dart';
import 'package:algo_track/models/current_project.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'projects.g.dart';

@Collection<Projects>('projects')
final projectsRef = ProjectsCollectionReference();

@firestoreSerializable
class Projects {
  @Id()
  final String? id;
  final String projectName;
  final String projectGroupId;
  final String leadUserId;
  final List<String>? adminUsers;
  final String companyId;
  final List<CurrentProject>? currentProjects;

  Projects(
      {this.id,
      required this.projectName,
      required this.projectGroupId,
      required this.leadUserId,
      this.adminUsers,
      required this.companyId,
      this.currentProjects});

  factory Projects.fromJson(Map<String, Object?> json) =>
      _$ProjectsFromJson(json);

  Map<String, Object?> toJson() => _$ProjectsToJson(this);
}

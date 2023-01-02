import 'package:algo_track/common/constants.dart';
import 'package:algo_track/models/current_project.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'project.g.dart';

@Collection<Project>('projects')
final projectRef = ProjectCollectionReference();

@firestoreSerializable
class Project {
  @Id()
  final String? id;
  final String projectName;
  final String projectGroupId;
  final String leadUserId;
  final List<String>? adminUsers;
  final String companyId;
  final List<CurrentProject>? currentProjects;

  Project(
      {this.id,
      required this.projectName,
      required this.projectGroupId,
      required this.leadUserId,
      this.adminUsers,
      required this.companyId,
      this.currentProjects});

  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);

  Map<String, Object?> toJson() => _$ProjectToJson(this);

  @override
  String toString() {
    return projectName;
  }
}

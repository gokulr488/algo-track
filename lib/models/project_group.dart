import 'package:algo_track/common/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'project_group.g.dart';

@Collection<ProjectGroup>('project_groups')
final projectGroupRef = ProjectGroupCollectionReference();

@firestoreSerializable
class ProjectGroup {
  @Id()
  final String? id;
  final String projectGroupName;
  final String companyId;

  ProjectGroup({
    this.id,
    required this.projectGroupName,
    required this.companyId,
  });

  factory ProjectGroup.fromJson(Map<String, Object?> json) =>
      _$ProjectGroupFromJson(json);

  Map<String, Object?> toJson() => _$ProjectGroupToJson(this);
}

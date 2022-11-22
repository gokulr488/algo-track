// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentProject _$CurrentProjectFromJson(Map<String, dynamic> json) =>
    CurrentProject(
      projectId: json['projectId'] as String,
      projectName: json['projectName'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      userRole: $enumDecode(_$UserRoleEnumMap, json['userRole']),
    );

Map<String, dynamic> _$CurrentProjectToJson(CurrentProject instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'userId': instance.userId,
      'userName': instance.userName,
      'userRole': _$UserRoleEnumMap[instance.userRole]!,
    };

const _$UserRoleEnumMap = {
  UserRole.DEVELOPER: 'DEVELOPER',
  UserRole.PROJECT_LEAD: 'PROJECT_LEAD',
  UserRole.PROJECT_MANAGER: 'PROJECT_MANAGER',
  UserRole.ARCHITECT: 'ARCHITECT',
  UserRole.TESTER: 'TESTER',
  UserRole.BA: 'BA',
};

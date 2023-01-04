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
      userRole: json['userRole'] as String,
    );

const _$CurrentProjectFieldMap = <String, String>{
  'projectId': 'projectId',
  'projectName': 'projectName',
  'userId': 'userId',
  'userName': 'userName',
  'userRole': 'userRole',
};

Map<String, dynamic> _$CurrentProjectToJson(CurrentProject instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'userId': instance.userId,
      'userName': instance.userName,
      'userRole': instance.userRole,
    };

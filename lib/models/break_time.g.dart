// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'break_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreakTime _$BreakTimeFromJson(Map<String, dynamic> json) => BreakTime(
      startTime: const FirestoreTimestampConverter()
          .fromJson(json['startTime'] as Timestamp),
      endTime: const FirestoreTimestampConverter()
          .fromJson(json['endTime'] as Timestamp),
      timeLogId: json['timeLogId'] as String,
      breakType: json['breakType'] as String,
    );

const _$BreakTimeFieldMap = <String, String>{
  'startTime': 'startTime',
  'endTime': 'endTime',
  'timeLogId': 'timeLogId',
  'breakType': 'breakType',
};

Map<String, dynamic> _$BreakTimeToJson(BreakTime instance) => <String, dynamic>{
      'startTime':
          const FirestoreTimestampConverter().toJson(instance.startTime),
      'endTime': const FirestoreTimestampConverter().toJson(instance.endTime),
      'timeLogId': instance.timeLogId,
      'breakType': instance.breakType,
    };

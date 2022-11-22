import 'package:algo_track/common/constants.dart';
import 'package:algo_track/models/break_time.dart';
import 'package:algo_track/models/enums/time_log_type.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'time_log.g.dart';

@Collection<TimeLog>('time_logs')
final timeLogsRef = TimeLogCollectionReference();

@firestoreSerializable
class TimeLog {
  @Id()
  final String? id;
  final Timestamp startTime;
  final Timestamp endTime;
  final String projectId;
  final TimeLogType timeLogType;
  final String? location;
  final String userId;
  final List<BreakTime>? breakTimes;

  TimeLog({
    this.id,
    required this.timeLogType,
    required this.location,
    required this.userId,
    this.breakTimes,
    required this.startTime,
    required this.endTime,
    required this.projectId,
  });

  factory TimeLog.fromJson(Map<String, Object?> json) =>
      _$TimeLogFromJson(json);

  Map<String, Object?> toJson() => _$TimeLogToJson(this);
}

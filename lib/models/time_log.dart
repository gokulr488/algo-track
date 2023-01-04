import 'package:algo_track/common/constants.dart';
import 'package:algo_track/models/break_time.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'time_log.g.dart';

@Collection<TimeLog>('time_logs')
final timeLogsRef = TimeLogCollectionReference();

@firestoreSerializable
class TimeLog {
  @Id()
  String? id;
  Timestamp startTime;
  Timestamp? endTime;
  String? projectId;
  String timeLogType;
  String? location;
  String userId;
  List<BreakTime>? breakTimes;
  String? assistingUserId;

  TimeLog({
    this.id,
    required this.timeLogType,
    this.location,
    required this.userId,
    this.breakTimes,
    required this.startTime,
    this.endTime,
    required this.projectId,
    this.assistingUserId,
  });

  factory TimeLog.fromJson(Map<String, Object?> json) =>
      _$TimeLogFromJson(json);

  Map<String, Object?> toJson() => _$TimeLogToJson(this);
}

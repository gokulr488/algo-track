import 'package:algo_track/common/constants.dart';
import 'package:algo_track/models/enums/break_type.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'break_time.g.dart';

@firestoreSerializable
class BreakTime {
  final Timestamp startTime;
  final Timestamp endTime;
  final String timeLogId;
  final BreakType breakType;

  BreakTime(
      {required this.startTime,
      required this.endTime,
      required this.timeLogId,
      required this.breakType});

  factory BreakTime.fromJson(Map<String, Object?> json) =>
      _$BreakTimeFromJson(json);

  Map<String, Object?> toJson() => _$BreakTimeToJson(this);
}

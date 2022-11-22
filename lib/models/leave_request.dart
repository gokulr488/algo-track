import 'package:algo_track/common/constants.dart';
import 'package:algo_track/models/enums/availability.dart';
import 'package:algo_track/models/enums/leave_type.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'leave_request.g.dart';

@Collection<LeaveRequest>('leave_request')
final leaveRequestRef = LeaveRequestCollectionReference();

@firestoreSerializable
class LeaveRequest {
  @Id()
  final String? id;
  final String subject;
  final String? leaveDescription;
  final String userId;
  final String userName;
  final LeaveType leaveType;
  final Timestamp startTime;
  final Timestamp endTime;
  final Availability availability;

  LeaveRequest(
      {this.id,
      required this.subject,
      this.leaveDescription,
      required this.userId,
      required this.userName,
      required this.leaveType,
      required this.startTime,
      required this.availability,
      required this.endTime});

  factory LeaveRequest.fromJson(Map<String, Object?> json) =>
      _$LeaveRequestFromJson(json);

  Map<String, Object?> toJson() => _$LeaveRequestToJson(this);
}

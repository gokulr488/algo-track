import 'package:algo_track/common/constants.dart';
import 'package:algo_track/models/current_project.dart';
import 'package:algo_track/models/enums/user_status.dart';
import 'package:algo_track/models/enums/user_type.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@Collection<User>('users')
final usersRef = UserCollectionReference();

@firestoreSerializable
class User {
  @Id()
  String? id;
  String userName;
  String emailId;
  String phoneNumber;
  String? password;
  UserType userType;
  String companyId;
  String? profilePicKey;
  Timestamp? profilePicUpdateTime;
  Timestamp? punchInReminder;
  Timestamp? punchOutReminder;
  String? currentTimeLogId;
  String userStatus;
  List<CurrentProject>? currentProjects;
  String? authUid;
  String? fcmToken;

  User({
    this.id,
    required this.userName,
    required this.emailId,
    required this.phoneNumber,
    this.password,
    required this.userType,
    required this.companyId,
    this.profilePicKey,
    this.punchInReminder,
    this.punchOutReminder,
    this.currentTimeLogId,
    this.currentProjects,
    this.profilePicUpdateTime,
    required this.userStatus,
    this.authUid,
    this.fcmToken,
  });

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  Map<String, Object?> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return userName;
  }
}

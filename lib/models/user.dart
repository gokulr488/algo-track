import 'package:algo_track/common/constants.dart';
import 'package:algo_track/models/current_project.dart';
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
  final String? id;
  final String userName;
  final String emailId;
  final String phoneNumber;
  final String? password;
  final UserType userType;
  final String companyId;
  final String? profilePicKey;
  final Timestamp? profilePicUpdateTime;
  final Timestamp? punchInReminder;
  final Timestamp? punchOutReminder;
  final String? currentTimeLogId;
  final List<CurrentProject>? currentProjects;

  User(
      {this.id,
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
      this.profilePicUpdateTime});

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  Map<String, Object?> toJson() => _$UserToJson(this);
}

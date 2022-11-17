import 'package:algo_track/common/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'company.g.dart';

@Collection<Company>('companies')
final companiesRef = CompanyCollectionReference();

@firestoreSerializable
class Company {
  Company(
      {required this.companyName,
      required this.emailId,
      required this.id,
      this.address,
      required this.password});

  factory Company.fromJson(Map<String, Object?> json) =>
      _$CompanyFromJson(json);

  @Id()
  final String id;
  final String companyName;
  final String emailId;
  final String? address;
  final String password;

  Map<String, Object?> toJson() => _$CompanyToJson(this);
}

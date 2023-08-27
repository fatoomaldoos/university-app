
import 'package:meta/meta.dart';
import 'dart:convert';

List<Teachers> teachersFromJson(String str) => List<Teachers>.from(json.decode(str).map((x) => Teachers.fromJson(x)));

String teachersToJson(List<Teachers> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Teachers {
  Teachers({
    required this.id,
    required this.name,
    required this.email,
    required this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.jobtype,
    required this.birthdate,
    required this.address,
    required this.image,
    required this.phoneNumber,
  });

  int id;
  String name;
  String email;
  dynamic emailVerifiedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  String jobtype;
  DateTime? birthdate;
  String address;
  String image;
  int phoneNumber;

  factory Teachers.fromJson(Map<String, dynamic> json) => Teachers(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    createdAt:/* json["created_at"]*/ json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
    updatedAt: /*json["updated_at"]*/ json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
    jobtype: json["jobtype"],
    birthdate:/* json["birthdate"]*/json['birthdate'] == null ? null : DateTime.parse(json['birthdate'] as String),
    address: json["address"] ,
    image: json["image"] ,
    phoneNumber: json["phone_number"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
    "jobtype": jobtype,
    "birthdate": birthdate == null ? null : "${birthdate!.year.toString().padLeft(4, '0')}-${birthdate!.month.toString().padLeft(2, '0')}-${birthdate!.day.toString().padLeft(2, '0')}",
    "address": address == null ? null : address,
    "image": image == null ? null : image,
    "phone_number": phoneNumber == null ? null : phoneNumber,
  };
}

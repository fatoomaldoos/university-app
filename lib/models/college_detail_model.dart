// To parse this JSON data, do
//
//     final college = collegeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

College collegeFromJson(String str) => College.fromJson(json.decode(str));

String collegeToJson(College data) => json.encode(data.toJson());

class College {
  College({
    required this.collId,
    required this.collName,
    required this.collImage,
    required this.collAddress,
    required this.universityId,
    required this.createdAt,
    required this.updatedAt,
  });

  int collId;
  String collName;
  String collImage;
  String collAddress;
  int universityId;
  DateTime createdAt;
  DateTime updatedAt;

  factory College.fromJson(Map<String, dynamic> json) => College(
    collId: json["coll_id"],
    collName: json["coll_name"],
    collImage: json["coll_image"],
    collAddress: json["coll_address"],
    universityId: json["university_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "coll_id": collId,
    "coll_name": collName,
    "coll_image": collImage,
    "coll_address": collAddress,
    "university_id": universityId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

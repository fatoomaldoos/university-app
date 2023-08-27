// To parse this JSON data, do
//
//     final colleges = collegesFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Colleges> collegesFromJson(String str) => List<Colleges>.from(json.decode(str).map((x) => Colleges.fromJson(x)));

String collegesToJson(List<Colleges> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Colleges {
  Colleges({
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

  factory Colleges.fromJson(Map<String, dynamic> json) => Colleges(
    collId: json["coll_id"],
    collName: json["coll_name"],
    collImage: json["coll_image"],
    collAddress: json["coll_address"],
    universityId: json["university_id"],
    createdAt: DateTime.parse(json["updated_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "coll_id": collId,
    "coll_name": collName,
    "coll_image": collImage,
    "coll_address": collAddress,
    "university_id": universityId,
    "created_at": createdAt == null ? null : createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

// To parse this JSON data, do
//
//     final subject = subjectFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Subject subjectFromJson(String str) => Subject.fromJson(json.decode(str));

String subjectToJson(Subject data) => json.encode(data.toJson());

class Subject {
  Subject({
    required this.subjectId,
    required this.subjectName,
    required this.createdAt,
    required this.updatedAt,
    required this.practicalAvailablity,
    required this.theoriticalAvailablity,
    required this.domainId,
  });

  int? subjectId;
  String? subjectName;
  dynamic? createdAt;
  DateTime? updatedAt;
  int? practicalAvailablity;
  int? theoriticalAvailablity;
  int? domainId;

  factory Subject.fromJson(Map<String, dynamic> json) => Subject(
    subjectId: json["subject_id"],
    subjectName: json["subject_name"],
    createdAt: json["created_at"],
    updatedAt: DateTime.parse(json["updated_at"]),
    practicalAvailablity: json["practical_availablity"],
    theoriticalAvailablity: json["theoritical_availablity"],
    domainId: json["domain_id"],
  );

  Map<String, dynamic> toJson() => {
    "subject_id": subjectId,
    "subject_name": subjectName,
    "created_at": createdAt,
    "updated_at": updatedAt!.toIso8601String(),
    "practical_availablity": practicalAvailablity,
    "theoritical_availablity": theoriticalAvailablity,
    "domain_id": domainId,
  };
}

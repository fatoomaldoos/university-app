// To parse this JSON data, do
//
//     final subjects = subjectsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Subjects> subjectsFromJson(String str) => List<Subjects>.from(json.decode(str).map((x) => Subjects.fromJson(x)));

String subjectsToJson(List<Subjects> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Subjects {
  Subjects({
    required this.subjectId,
    required this.subjectName,
    required this.createdAt,
    required this.updatedAt,
    required this.practicalAvailablity,
    required this.theoriticalAvailablity,
    required this.domainId,
  });

  int subjectId;
  String? subjectName;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? practicalAvailablity;
  int? theoriticalAvailablity;
  int? domainId;

  factory Subjects.fromJson(Map<String, dynamic> json) => Subjects(
    subjectId: json["subject_id"],
    subjectName: json["subject_name"],
    createdAt: DateTime.parse(json["updated_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    practicalAvailablity: json["practical_availablity"],
    theoriticalAvailablity: json["theoritical_availablity"],
    domainId: json["domain_id"],
  );

  Map<String, dynamic> toJson() => {
    "subject_id": subjectId,
    "subject_name": subjectName,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "practical_availablity": practicalAvailablity,
    "theoritical_availablity": theoriticalAvailablity,
    "domain_id": domainId ,
  };
}


import 'package:meta/meta.dart';
import 'dart:convert';

List<SubjectClasses> subjectClassesFromJson(String str) => List<SubjectClasses>.from(json.decode(str).map((x) => SubjectClasses.fromJson(x)));

String subjectClassesToJson(List<SubjectClasses> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SubjectClasses {
  SubjectClasses({
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
  dynamic? domainId;

  factory SubjectClasses.fromJson(Map<String, dynamic> json) => SubjectClasses(
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

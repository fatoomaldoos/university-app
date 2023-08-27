import 'package:meta/meta.dart';
import 'dart:convert';

List<Classes> classesFromJson(String str) => List<Classes>.from(json.decode(str).map((x) => Classes.fromJson(x)));

String classesToJson(List<Classes> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Classes {
  Classes({
    required this.classId,
    required this.className,
    required this.sectionId,
    required this.updatedAt,
    required this.createdAt,
  });

  int? classId;
  String? className;
  int? sectionId;
  DateTime? updatedAt;
  DateTime? createdAt;

  factory Classes.fromJson(Map<String, dynamic> json) => Classes(
    classId: json["class_id"],
    className: json["class_name"],
    sectionId: json["section_id"],
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "class_id": classId,
    "class_name": className,
    "section_id": sectionId,
    "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
    "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
  };
}

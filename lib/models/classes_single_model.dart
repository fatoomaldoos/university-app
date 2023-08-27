
import 'package:meta/meta.dart';
import 'dart:convert';

Class classFromJson(String str) => Class.fromJson(json.decode(str));

String classToJson(Class data) => json.encode(data.toJson());

class Class {
  Class({
    required this.classId,
    required this.className,
    required this.sectionId,
    required this.updatedAt,
    required this.createdAt,
  });

  int? classId;
  String? className;
  int? sectionId;
  dynamic? updatedAt;
  dynamic? createdAt;

  factory Class.fromJson(Map<String, dynamic> json) => Class(
    classId: json["class_id"],
    className: json["class_name"],
    sectionId: json["section_id"],
    updatedAt: json["updated_at"],
    createdAt: json["created_at"],
  );

  Map<String, dynamic> toJson() => {
    "class_id": classId,
    "class_name": className,
    "section_id": sectionId,
    "updated_at": updatedAt,
    "created_at": createdAt,
  };
}

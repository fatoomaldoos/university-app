// To parse this JSON data, do
//
//     final advertisment = advertismentFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Advertisment> advertismentFromJson(String str) => List<Advertisment>.from(json.decode(str).map((x) => Advertisment.fromJson(x)));

String advertismentToJson(List<Advertisment> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Advertisment {
  Advertisment({
    required this.advertismentId,
    required this.collageId,
    required this.content,
    required this.universityId,
    required this.createdAt,
    required this.updatedAt,
  });

  int advertismentId;
  int collageId;
  String content;
  dynamic universityId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Advertisment.fromJson(Map<String, dynamic> json) => Advertisment(
    advertismentId: json["advertisment_id"],
    collageId: json["collage_id"],
    content: json["content"],
    universityId: json["university_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "advertisment_id": advertismentId,
    "collage_id": collageId,
    "content": content,
    "university_id": universityId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}

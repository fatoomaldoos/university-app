// To parse this JSON data, do
//
//     final sections = sectionsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Sections> sectionsFromJson(String str) => List<Sections>.from(json.decode(str).map((x) => Sections.fromJson(x)));

String sectionsToJson(List<Sections> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Sections {
  Sections({
    required this.secId,
    required this.secName,
    required this.collageId,
    required this.createdAt,
    required this.updatedAt,
  });

  int secId;
  String secName;
  int collageId;
  dynamic createdAt;
  dynamic updatedAt;

  factory Sections.fromJson(Map<String, dynamic> json) => Sections(
    secId: json["sec_id"],
    secName: json["sec_name"],
    collageId: json["collage_id"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "sec_id": secId,
    "sec_name": secName,
    "collage_id": collageId,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}

// To parse this JSON data, do
//
//     final section = sectionFromJson(jsonString);

import 'dart:convert';

Section sectionFromJson(String str) => Section.fromJson(json.decode(str));

String sectionToJson(Section data) => json.encode(data.toJson());

class Section {
  Section({
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

  factory Section.fromJson(Map<String, dynamic> json) => Section(
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

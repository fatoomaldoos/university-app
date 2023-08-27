// To parse this JSON data, do
//
//     final certificateSection = certificateSectionFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<CertificateSection> certificateSectionFromJson(String str) => List<CertificateSection>.from(json.decode(str).map((x) => CertificateSection.fromJson(x)));

String certificateSectionToJson(List<CertificateSection> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CertificateSection {
  CertificateSection({
    required this.certificationType,
    required this.section,
    required this.collage,
    required this.university,
    required this.cerId,
  });

  String certificationType;
  String section;
  String collage;
  String university;
  int cerId;

  factory CertificateSection.fromJson(Map<String, dynamic> json) => CertificateSection(
    certificationType: json["certificationType"],
    section: json["section"],
    collage: json["collage"],
    university: json["university"],
    cerId: json["cer_id"],
  );

  Map<String, dynamic> toJson() => {
    "certificationType": certificationType,
    "section": section,
    "collage": collage,
    "university": university,
    "cer_id": cerId,
  };
}

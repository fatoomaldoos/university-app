import 'package:meta/meta.dart';
import 'dart:convert';

List<CertificationClass> certificationClassFromJson(String str) => List<CertificationClass>.from(json.decode(str).map((x) => CertificationClass.fromJson(x)));

String certificationClassToJson(List<CertificationClass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CertificationClass {
  CertificationClass({
    required this.certificationType,
    required this.certificationClassClass,
    required this.section,
    required this.collage,
    required this.university,
    required this.cerId,
  });

  String? certificationType;
  String? certificationClassClass;
  String? section;
  String? collage;
  String? university;
  int? cerId;

  factory CertificationClass.fromJson(Map<String, dynamic> json) => CertificationClass(
    certificationType: json["certificationType"],
    certificationClassClass: json["class"],
    section: json["section"],
    collage: json["collage"],
    university: json["university"],
    cerId: json["cer_id"],
  );

  Map<String, dynamic> toJson() => {
    "certificationType": certificationType,
    "class": certificationClassClass,
    "section": section,
    "collage": collage,
    "university": university,
    "cer_id": cerId,
  };
}

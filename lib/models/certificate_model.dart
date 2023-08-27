// To parse this JSON data, do
//
//     final certificate = certificateFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Certificate> certificateFromJson(String str) => List<Certificate>.from(json.decode(str).map((x) => Certificate.fromJson(x)));

String certificateToJson(List<Certificate> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Certificate {
  Certificate({
    required this.certificationType,
    required this.collage,
    required this.university,
    required this.cerId,
  });

  String certificationType;
  String collage;
  String university;
  int cerId;

  factory Certificate.fromJson(Map<String, dynamic> json) => Certificate(
    certificationType: json["certificationType"],
    collage: json["collage"],
    university: json["university"],
    cerId: json["cer_id"],
  );

  Map<String, dynamic> toJson() => {
    "certificationType": certificationType,
    "collage": collage,
    "university": university,
    "cer_id": cerId,
  };
}

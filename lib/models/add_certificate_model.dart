
import 'package:meta/meta.dart';
import 'dart:convert';

AddCertificate addCertificateFromJson(String str) => AddCertificate.fromJson(json.decode(str));

String addCertificateToJson(AddCertificate data) => json.encode(data.toJson());

class AddCertificate {
  AddCertificate({
    required this.data,
    required this.msg,
  });

  Data data;
  String msg;

  factory AddCertificate.fromJson(Map<String, dynamic> json) => AddCertificate(
    data: Data.fromJson(json["data"]),
    msg: json["msg"],
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "msg": msg,
  };
}

class Data {
  Data({
    required this.teacherId,
    required this.degree,
    required this.description,
    required this.date,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  String teacherId;
  String degree;
  String description;
  dynamic date;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    teacherId: json["teacher_id"],
    degree: json["degree"],
    description: json["description"],
    date: json["date"],
    updatedAt: DateTime.parse(json["updated_at"]),
    createdAt: DateTime.parse(json["created_at"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "teacher_id": teacherId,
    "degree": degree,
    "description": description,
    "date": date,
    "updated_at": updatedAt.toIso8601String(),
    "created_at": createdAt.toIso8601String(),
    "id": id,
  };
}

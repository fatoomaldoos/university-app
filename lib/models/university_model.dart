// To parse this JSON data, do
//
//     final university = universityFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<University> universityFromJson(String str) =>
    List<University>.from(json.decode(str).map((x) => University.fromJson(x)));

String universityToJson(List<University> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class University {
  University({
    required this.id,
    required this.name,
    required this.image,
    required this.address,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  String image;
  String address;
  dynamic createdAt;
  dynamic updatedAt;

  factory University.fromJson(Map<String, dynamic> json) => University(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    address: json["address"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "address": address,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}


import 'package:meta/meta.dart';
import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
     this.name,
     this.email,
     this.password,
     this.birthdate,
     this.phoneNumber,
     this.address,
     this.image,
  });

  String? name;
  String? email;
  String? password;
  DateTime? birthdate;
  String? phoneNumber;
  String? address;
  String? image;

  factory User.fromJson(Map<String, dynamic> json) => User(
    name: json["name"],
    email: json["email"],
    password: json["password"],
    birthdate: DateTime.parse(json["birthdate"]),
    phoneNumber: json["phone_number"],
    address: json["address"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "password": password,
    "birthdate": "${birthdate!.year.toString().padLeft(4, '0')}-${birthdate!.month.toString().padLeft(2, '0')}-${birthdate!.day.toString().padLeft(2, '0')}",
    "phone_number": phoneNumber,
    "address": address,
    "image": image,
  };
}

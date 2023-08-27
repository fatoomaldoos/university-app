import 'package:meta/meta.dart';
import 'dart:convert';

List<AdvertismentUniversity> advertismentUniversityFromJson(String str) => List<AdvertismentUniversity>.from(json.decode(str).map((x) => AdvertismentUniversity.fromJson(x)));

String advertismentUniversityToJson(List<AdvertismentUniversity> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AdvertismentUniversity {
  AdvertismentUniversity({
    required this.advertismentId,
    required this.collageId,
    required this.content,
    required this.universityId,
    required this.createdAt,
    required this.updatedAt,
  });

  int? advertismentId;
  dynamic? collageId;
  String? content;
  int? universityId;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory AdvertismentUniversity.fromJson(Map<String, dynamic> json) => AdvertismentUniversity(
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
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
  };
}

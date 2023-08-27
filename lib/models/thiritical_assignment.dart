import 'dart:convert';
List<ThiriticalAssignment>
thiriticalAssignmentFromJson(String str) =>
    List<ThiriticalAssignment>.from(json.decode(str).map((x)
    => ThiriticalAssignment.fromJson(x)));

String thiriticalAssignmentToJson(
    List<ThiriticalAssignment> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ThiriticalAssignment {
  ThiriticalAssignment({
    required this.id,
    required this.type,
    required this.description,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? type;
  String? description;
  dynamic? createdAt;
  dynamic? updatedAt;

  factory ThiriticalAssignment.fromJson(
      Map<String, dynamic> json) => ThiriticalAssignment(
    id: json["id"],
    type: json["type"],
    description: json["description"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
    "description": description,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}

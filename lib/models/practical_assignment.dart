import 'dart:convert';
List<PracticalAssignment>
practicalAssignmentFromJson(String str) =>
    List<PracticalAssignment>.from(json.decode(str).map((x)
    => PracticalAssignment.fromJson(x)));

String practicalAssignmentToJson(
    List<PracticalAssignment> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PracticalAssignment {
  PracticalAssignment({
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

  factory PracticalAssignment.fromJson(
      Map<String, dynamic> json) => PracticalAssignment(
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

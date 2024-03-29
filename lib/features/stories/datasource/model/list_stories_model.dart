import 'dart:convert';

class StoryList {
  final String id;
  final String name;
  final String description;
  final String photoUrl;
  final DateTime createdAt;
  final num? lat;
  final num? lon;

  StoryList({
    required this.id,
    required this.name,
    required this.description,
    required this.photoUrl,
    required this.createdAt,
    this.lat,
    this.lon,
  });

  factory StoryList.fromJson(String str) => StoryList.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StoryList.fromMap(Map<String, dynamic> json) => StoryList(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        photoUrl: json["photoUrl"],
        createdAt: DateTime.parse(json["createdAt"]),
        lat: json["lat"],
        lon: json["lon"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "photoUrl": photoUrl,
        "createdAt": createdAt.toIso8601String(),
        "lat": lat,
        "lon": lon,
      };
}

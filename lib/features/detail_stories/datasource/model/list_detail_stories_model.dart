import 'dart:convert';

class DetailStoryList {
  final String id;
  final String name;
  final String description;
  final String photoUrl;
  final DateTime createdAt;
  final num? lat;
  final num? lon;

  DetailStoryList({
    required this.id,
    required this.name,
    required this.description,
    required this.photoUrl,
    required this.createdAt,
    this.lat,
    this.lon,
  });

  factory DetailStoryList.fromJson(String str) =>
      DetailStoryList.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DetailStoryList.fromMap(Map<String, dynamic> json) => DetailStoryList(
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

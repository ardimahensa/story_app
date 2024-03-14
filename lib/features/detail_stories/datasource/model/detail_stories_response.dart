import 'dart:convert';

import 'package:story_u/features/detail_stories/datasource/model/list_detail_stories_model.dart';

class DetailStoriesResponse {
  final bool error;
  final String message;
  final DetailStoryList detailStory;

  DetailStoriesResponse({
    required this.error,
    required this.message,
    required this.detailStory,
  });

  factory DetailStoriesResponse.fromJson(String str) =>
      DetailStoriesResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DetailStoriesResponse.fromMap(Map<String, dynamic> json) =>
      DetailStoriesResponse(
        error: json["error"],
        message: json["message"],
        detailStory: DetailStoryList.fromMap(json["story"]),
      );

  Map<String, dynamic> toMap() => {
        "error": error,
        "message": message,
        "story": detailStory,
      };
}

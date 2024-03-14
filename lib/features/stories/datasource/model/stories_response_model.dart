import 'dart:convert';

import 'package:story_u/features/stories/datasource/model/list_stories_model.dart';

class StoriesResponse {
  final bool error;
  final String message;
  final List<StoryList> stories;

  StoriesResponse({
    required this.error,
    required this.message,
    required this.stories,
  });

  factory StoriesResponse.fromJson(String str) =>
      StoriesResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StoriesResponse.fromMap(Map<String, dynamic> json) => StoriesResponse(
        error: json["error"],
        message: json["message"],
        stories: (json['listStory'] as List)
            .map<StoryList>((e) => StoryList.fromMap(e))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        "error": error,
        "message": message,
        "listStory": stories,
      };
}

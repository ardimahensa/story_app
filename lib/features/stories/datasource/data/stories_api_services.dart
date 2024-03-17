import 'dart:convert';
import 'dart:io';

import 'package:story_u/constant/constant.dart';
import 'package:story_u/features/auth/datasource/data/user_data.dart';
import 'package:story_u/features/stories/datasource/model/stories_response_model.dart';
import 'package:http/http.dart' as http;

class StoriesApiServices {
  Future<StoriesResponse> getAllStories(
      {required int page, required int size}) async {
    final String? token = await UserDataLocal().getLoginToken();

    final response = await http.get(
      Uri.parse('${Constant.getStoriesUrl}?page=$page&size=$size'),
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      return StoriesResponse.fromJson(response.body);
    } else {
      final String error = jsonDecode(response.body)['message'];
      throw Exception(error);
    }
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:story_u/constant/constant.dart';
import 'package:story_u/features/auth/datasource/data/user_data.dart';
import 'package:story_u/features/detail_stories/datasource/model/detail_stories_response.dart';
import 'package:http/http.dart' as http;

class DetailStoriesApiServices {
  Future<DetailStoriesResponse> detailStories(String id) async {
    final String? token = await UserDataLocal().getLoginToken();

    final response = await http.get(
      Uri.parse('${Constant.getStoriesUrl}/$id'),
      headers: {
        HttpHeaders.authorizationHeader: 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      return DetailStoriesResponse.fromJson(response.body);
    } else {
      final String error = jsonDecode(response.body)['message'];
      throw Exception(error);
    }
  }
}

import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:story_u/constant/constant.dart';
import 'package:story_u/features/add_stories/datasource/model/photo_response_model.dart';
import 'package:story_u/features/auth/datasource/data/user_data.dart';

class AddStoriesApi {
  Future<UploadPhotoResponse> postStories(
    List<int> bytes,
    String fileName,
    String description,
  ) async {
    final String? token = await UserDataLocal().getLoginToken();
    log('$token');
    var request =
        http.MultipartRequest('POST', Uri.parse(Constant.getStoriesUrl));
    var headers = {
      HttpHeaders.contentTypeHeader: 'multipart/form-data',
      HttpHeaders.authorizationHeader: 'Bearer $token',
    };

    final multiPartFile = http.MultipartFile.fromBytes(
      "photo",
      bytes,
      filename: fileName,
    );

    final Map<String, String> fields = {
      "description": description,
    };

    request.files.add(multiPartFile);
    request.fields.addAll(fields);
    request.headers.addAll(headers);

    final http.StreamedResponse streamedResponse = await request.send();
    final int statusCode = streamedResponse.statusCode;

    final String responseData = await streamedResponse.stream.bytesToString();
    if (statusCode == 201) {
      final UploadPhotoResponse uploadPhotoResponse =
          UploadPhotoResponse.fromJson(
        json.decode(responseData),
      );

      return uploadPhotoResponse;
    } else {
      throw Exception("Failed to upload file: $statusCode, $responseData");
    }
  }
}

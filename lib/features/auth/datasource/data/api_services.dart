import 'dart:convert';

import 'package:story_u/constant/constant.dart';
import 'package:story_u/features/auth/datasource/model/login_response_model.dart';
import 'package:http/http.dart' as http;

import '../model/register_response_model.dart';

class ApiServices {
  Future<LoginResponse> login(String email, String password) async {
    final response = await http.post(Uri.parse(Constant.loginUrl), body: {
      'email': email,
      'password': password,
    });
    if (response.statusCode == 200) {
      return LoginResponse.fromJson(response.body);
    } else {
      final String message = jsonDecode(response.body)['message'];
      throw Exception(message);
    }
  }

  Future<RegisterResponse> register(
      String name, String email, String password) async {
    final response = await http.post(Uri.parse(Constant.registerUrl), body: {
      'name': name,
      'email': email,
      'password': password,
    });

    if (response.statusCode == 201) {
      final responseData = json.decode(response.body);
      return RegisterResponse.fromJson(responseData);
    } else {
      final String message = jsonDecode(response.body)['message'];
      throw Exception(message);
    }
  }
}

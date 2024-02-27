import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../model/login_result_model.dart';

class UserDataLocal {
  final String _loginResultKey = 'login_result';
  Future<void> saveLoginResult(LoginResult loginResult) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String loginResultJson = json.encode(loginResult.toJson());
    await prefs.setString(_loginResultKey, loginResultJson);
  }

  Future<LoginResult?> getLoginResult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? loginResultJson = prefs.getString(_loginResultKey);
    if (loginResultJson != null) {
      return LoginResult.fromJson(json.decode(loginResultJson));
    }
    return null;
  }

  Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(_loginResultKey);
  }

  Future<void> clearLoginResult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}

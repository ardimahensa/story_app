import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemePreferences {
  static const _keyTheme = 'theme';

  static Future<void> setTheme(ThemeData themeData) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyTheme, themeData.brightness == Brightness.dark);
  }

  static Future<ThemeData> getTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool isDarkTheme = prefs.getBool(_keyTheme) ?? false;
    return ThemeData(
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
    );
  }
}

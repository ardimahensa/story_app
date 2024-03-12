import 'package:shared_preferences/shared_preferences.dart';

class SaveTheme {
  static const String _themeKey = 'theme';

  static Future<void> saveTheme(bool isDark) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeKey, isDark);
  }

  static Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_themeKey) ?? false; // Default theme adalah light
  }
}

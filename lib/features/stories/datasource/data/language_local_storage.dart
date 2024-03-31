import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguagePreferences {
  static const _keyLanguage = 'language';
  static const _keyCountryCode = 'countryCode';

  static Future<void> saveLanguage(
      String languageCode, String countryCode) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyLanguage, languageCode);
    await prefs.setString(_keyCountryCode, countryCode);
  }

  static Future<Locale> getLanguage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String storedLanguage = prefs.getString(_keyLanguage) ?? 'en';
    final String storedCountryCode = prefs.getString(_keyCountryCode) ?? 'US';
    return Locale(storedLanguage, storedCountryCode);
  }
}

import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_u/features/stories/datasource/data/language_local_storage.dart';

part 'language_state.dart';
part 'language_cubit.freezed.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit()
      : super(const LanguageState.currentLanguage(Locale('en', 'EN'))) {
    _initialize();
  }
  Future<void> _initialize() async {
    final Locale selectedLanguage = await LanguagePreferences.getLanguage();
    emit(LanguageState.changeLanguage(selectedLanguage));
  }

  Future<void> changeLanguage(String languageCode, String countryCode) async {
    await LanguagePreferences.saveLanguage(languageCode, countryCode);
    emit(LanguageState.changeLanguage(Locale(languageCode, countryCode)));
  }

  Future<void> loadLanguage() async {
    final Locale selectedLocale = await LanguagePreferences.getLanguage();
    emit(LanguageState.currentLanguage(selectedLocale));
  }
}

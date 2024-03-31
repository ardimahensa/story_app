part of 'language_cubit.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState.changeLanguage(Locale language) = _ChangeLanguage;
  const factory LanguageState.currentLanguage(Locale currentLanguage) =
      _CurrentLanguage;
}

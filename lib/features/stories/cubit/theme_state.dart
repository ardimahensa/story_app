part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.changeTheme(ThemeData themeData) = _ChangeTheme;
  const factory ThemeState.currentTheme(ThemeData themeData) = _CurrentTheme;
}

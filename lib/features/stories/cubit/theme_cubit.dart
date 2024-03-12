import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState.changeTheme(false));

  void changeTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newTheme = !state.theme;
    await prefs.setBool('theme', newTheme);
    emit(ThemeState.changeTheme(!state.theme));
  }

  void toggleTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool newTheme = !state.theme;
    await prefs.setBool('theme', newTheme);
    emit(ThemeState.changeTheme(!state.theme));
  }
}

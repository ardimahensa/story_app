import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState.changeTheme(false));
  void changeTheme() => emit(ThemeState.changeTheme(!state.theme));
  void toggleTheme() => emit(ThemeState.changeTheme(!state.theme));
}

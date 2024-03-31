import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:story_u/features/stories/datasource/data/theme_local_storage.dart';

part 'theme_state.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.changeTheme(ThemeData.dark())) {
    _initialize();
  }

  Future<void> _initialize() async {
    final ThemeData selectedTheme = await ThemePreferences.getTheme();
    emit(ThemeState.changeTheme(selectedTheme));
  }

  Future<void> changeTheme(ThemeData themeData) async {
    await ThemePreferences.setTheme(themeData);
    emit(ThemeState.changeTheme(themeData));
  }

  Future<void> loadTheme() async {
    final ThemeData selectedTheme = await ThemePreferences.getTheme();
    emit(ThemeState.currentTheme(selectedTheme));
  }

  Future<void> toggleTheme() async {
    final ThemeData currentTheme = state.themeData;
    final ThemeData newTheme = currentTheme.brightness == Brightness.light
        ? ThemeData.dark()
        : ThemeData.light();
    await ThemePreferences.setTheme(newTheme);
    emit(ThemeState.changeTheme(newTheme));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Cubit<ThemeState> {
  ThemeBloc() : super(ThemeState(theme: ThemeMode.dark));

  void toggleTheme() {
    if (state.theme == ThemeMode.dark) {
      final state = ThemeState(theme: ThemeMode.light);
      emit(state);
    } else {
      final state = ThemeState(theme: ThemeMode.dark);
      emit(state);
    }
  }

  ThemeMode get getThemeMode {
    return state.theme;
  }
}

class ThemeState {
  ThemeMode theme;

  ThemeState({required this.theme});
}

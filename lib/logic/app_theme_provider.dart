import 'package:flutter/material.dart';

class AppThemeProvider {
  final ValueNotifier<ThemeMode> _themeModeNotifier =
      ValueNotifier(ThemeMode.light);

  ValueNotifier<ThemeMode> get themeModeNotifier => _themeModeNotifier;

  void toggleTheme() {
    _themeModeNotifier.value = _themeModeNotifier.value == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
  }

  void setTheme(ThemeMode themeMode) {
    _themeModeNotifier.value = themeMode;
  }
}

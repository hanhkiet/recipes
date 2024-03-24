import 'package:flutter/material.dart';

class ThemeProvider {
  ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.system);

  void toggleTheme() {
    themeMode.value =
        themeMode.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme(ThemeMode themeMode) {
    this.themeMode.value = themeMode;
  }
}

import 'package:extensions_package/extensions_package.dart';
import 'package:flutter/material.dart';

extension ThemeModeExtensions on ThemeMode {
  Brightness of(BuildContext context) {
    switch (this) {
      case ThemeMode.dark:
        return Brightness.dark;
      case ThemeMode.light:
        return Brightness.light;
      case ThemeMode.system:
        return context.platformBrightness;
    }
  }

  static ThemeMode _mode = ThemeMode.system;
  static ThemeMode get themeMode => _mode;
  static set themeMode(ThemeMode newMode) => newMode;
}

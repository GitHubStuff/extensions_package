import 'package:extensions_package/extensions_package.dart';
import 'package:flutter/material.dart';

extension ThemeModeExtensions on ThemeMode {
  Brightness brightness(BuildContext context) {
    switch (this) {
      case ThemeMode.dark:
        return Brightness.dark;
      case ThemeMode.light:
        return Brightness.light;
      case ThemeMode.system:
        return context.platformBrightness;
    }
  }
}

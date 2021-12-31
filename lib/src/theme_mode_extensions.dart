import 'package:extensions_package/extensions_package.dart';
import 'package:flutter/material.dart';

enum BrightnessType {
  appDark,
  appLight,
  systemDark,
  systemLight,
}

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

  BrightnessType brightnessType(BuildContext context) {
    switch (this) {
      case ThemeMode.dark:
        return BrightnessType.appDark;
      case ThemeMode.light:
        return BrightnessType.appLight;
      case ThemeMode.system:
        return context.platformBrightness == Brightness.dark ? BrightnessType.systemDark : BrightnessType.systemLight;
    }
  }
}

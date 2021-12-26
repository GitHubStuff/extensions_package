import 'dart:ffi';

import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  bool get isKeyBoardOpen => mediaQuery.viewInsets.bottom > 0;
  Brightness get platformBrightness => mediaQuery.platformBrightness;
  ColorScheme get colorScheme => appTheme.colorScheme;
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  TextTheme get primaryTextTheme => appTheme.primaryTextTheme;
  TextTheme get textTheme => appTheme.textTheme;
  ThemeData get appTheme => Theme.of(this);

  void hideKeyboard() => !FocusScope.of(this).hasPrimaryFocus ? FocusScope.of(this).unfocus() : Void;
}

# BuildContextExtensions on BuildContext

Getters and methods on BuildContext

## Extension

```dart
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
  List<Locale>? get locales => findAncestorWidgetOfExactType<MaterialApp>()?.supportedLocales.toList();

  void hideKeyboard() => !FocusScope.of(this).hasPrimaryFocus ? FocusScope.of(this).unfocus() : Void;
}
```

## Final Note

Be kind to each other

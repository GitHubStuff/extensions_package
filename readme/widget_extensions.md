# extension WidgetExtensions on Widget

## Summary

```dart
  // Set a widgets background color
  Widget background(Color color)

  // Surrounde a widget with a colored border
  Widget borderAll(Color color, {double width = 1.5, double radius = 0.0,})
  
  // Hide a widget, leaving the space it takes up in place
  Widget hide(bool state) => this.opacity(state ? 0.0 : 1.0);

  // Set widget's opacity without have to wrap in Opacity widget
  Widget opacity(double shade)

  // Apply padding to a widget for each side
  Widget padding({double left = 0.0, double right = 0.0, double top = 0.0, double bottom = 0.0})

  // Apply padding to all sides of a widget
  Widget paddingAll(double value)

  // Apply symmetrical padding to a widget
  Widget paddingSymmetric({horizontal, vertical})

  // Make a widget appear/disappear also adding/removing the space it takes
  Widget removed(bool state)

  // Wrap widget in a Container with padding, and background Color
  Widget wrap({double left = 0.0, double right = 0.0, double top = 0.0, double bottom = 0.0, Color color = Colors.transparent})

  // Wrap a widget in a Container with uniform padding, and a background colors
  Widget wrapAll(double value, {Color color = Colors.transparent})
```

## Final Note

Be kind to each other

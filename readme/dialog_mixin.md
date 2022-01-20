# mixin for widgets

mixin DialogMixin

- backgroundImageWidget: Widget can have background image instead of colors
- showWidgetInDialog: Display a showDialog with barrier, with optional duration, with background image
- dismissShowWidgetInDialog: dismiss instance of ```showWidgetInDialog```
  
## Summary

```dart
  /// Make a background an image (instead of colors)
  /// NOTE: make sure the child as a transparency to allow the image to show throw
  /// NOTE: If using this to wrap a Scaffold() widget Scaffold backgroundColor to transparent:
  /// ex: backgroundImageWidget(image: ImageProvider(), child: Scaffold(..., backgroundColor: Colors.transparent,...));
  Widget backgroundImageWidget({required Widget child, required ImageProvider imageProvider})

  /// Async dismis of `showWidgetInDialog`
  void dismissShowWidgetInDialog(BuildContext context)

  ///Enhancement on ShowDialog:
  /// - Adjustable barrier color (doesn't allow tapping 'behind' the barrier)
  /// - Optional background Image instead of colors option
  /// - Optional duration for display
  void showWidgetInDialog(
    BuildContext context, {
    required Widget child,
    Color barrierColor = const Color(0x20ffffff),
    ImageProvider? backgroundImage,
    double childOpacity = 1.0,
    Duration? displayDuration,
  })
```

## Final Note

Be kind to each other!

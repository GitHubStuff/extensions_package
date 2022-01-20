import 'package:flutter/material.dart';

mixin DialogMixin {
  /// Make a background an image (instead of colors)
  /// NOTE: make sure the child as a transparency to allow the image to show throw
  /// NOTE: If using this to wrap a Scaffold() widget Scaffold backgroundColor to transparent:
  /// ex: backgroundImageWidget(image: ImageProvider(), child: Scaffold(..., backgroundColor: Colors.transparent,...));
  Widget backgroundImageWidget({required Widget child, required ImageProvider imageProvider}) => Container(
        decoration: BoxDecoration(image: DecorationImage(image: imageProvider, fit: BoxFit.cover)),
        child: child,
      );

  /// Async dismis of `showWidgetInDialog`
  void dismissShowWidgetInDialog(BuildContext context) => Navigator.of(context, rootNavigator: true).pop();

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
  }) {
    assert(childOpacity >= 0.0 && childOpacity <= 1.0);
    Widget childWidget = (backgroundImage == null)
        ? Center(child: child)
        : Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: backgroundImage,
                fit: BoxFit.cover,
              ),
            ),
            child: Opacity(opacity: childOpacity, child: child),
          );

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Material(
        color: barrierColor,
        child: Center(
          child: childWidget,
        ),
      ),
    );
    if (displayDuration != null) Future.delayed(displayDuration, () => dismissShowWidgetInDialog(context));
  }
}

@Deprecated('use: DialogMixin in extensions_package')
mixin BlurOverlay {
  @Deprecated('use: DialogMix -> dismissShowWidgetInDialog() in extensions_package')
  void overlayDismiss(BuildContext context) => Navigator.of(context, rootNavigator: true).pop();

  @Deprecated('use: DialogMix -> showWidgetInDialog() in extensions_package')
  void showWidgetDialog(
    BuildContext context, {
    required Widget widget,
    Color barrierColor = const Color(0x20ffffff),
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Material(
        color: barrierColor,
        child: Center(
          child: widget,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
  void dismissShowWidgetInDialog(BuildContext context) => Future.delayed(Duration.zero, () => Modular.to.pop());

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

    Future.delayed(
        Duration.zero,
        () => showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => Material(
                color: barrierColor,
                child: Center(
                  child: childWidget,
                ),
              ),
            ));
    if (displayDuration != null) Future.delayed(displayDuration, () => dismissShowWidgetInDialog(context));
  }

  /// Execute a function after a given delay Duration(default 100ms), or a given number milliseconds (set "ms")
  void afterDelay(Function function, {Duration duration = const Duration(milliseconds: 100), int? ms}) {
    assert(ms == null || ms >= 0, 'Value of ms is either null or >0 not $ms');
    assert(!duration.isNegative, 'Duration must >= 0');
    Duration pause = (ms != null) ? Duration(milliseconds: ms) : duration;
    Future.delayed(pause, () => function());
  }
}

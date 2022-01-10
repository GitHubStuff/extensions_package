import 'package:flutter/material.dart';

mixin BlurOverlay {
  void overlayDismiss(BuildContext context) => Navigator.of(context, rootNavigator: true).pop();

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

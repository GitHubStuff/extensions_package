import 'package:flutter/material.dart';

extension TextExtensions on Text {
  Text fontSize(double fontSize) => Text(this.data!,
      style: this.style == null
          ? TextStyle(fontSize: fontSize)
          : this.style?.copyWith(
                fontSize: fontSize,
              ));

  /// Normal or italic
  Text fontStyle(FontStyle fontStyle) => Text(this.data!,
      style: this.style == null
          ? TextStyle(fontStyle: fontStyle)
          : this.style?.copyWith(
                fontStyle: fontStyle,
              ));

  /// Normal, bold, weighted
  Text fontWeight(FontWeight fontWeight) => Text(this.data!,
      style: this.style == null
          ? TextStyle(fontWeight: fontWeight)
          : this.style?.copyWith(
                fontWeight: fontWeight,
              ));

  Text textColor(Color color) => Text(this.data!,
      style: this.style == null
          ? TextStyle(color: color)
          : this.style?.copyWith(
                color: color,
              ));
}

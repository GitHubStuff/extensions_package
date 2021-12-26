import 'package:flutter/material.dart';

extension TextExtensions on Text {
  Text textColor(Color color) => Text(this.data!,
      style: this.style == null
          ? TextStyle(color: color)
          : this.style?.copyWith(
                color: color,
              ));

  Text fontSize(double fontSize) => Text(this.data!,
      style: this.style == null
          ? TextStyle(fontSize: fontSize)
          : this.style?.copyWith(
                fontSize: fontSize,
              ));
}

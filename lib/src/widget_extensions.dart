import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  Widget removed(bool state) => state ? SizedBox(height: 1.0, width: 1.0) : this;
  Widget hide(bool state) => this.opacity(state ? 0.0 : 1.0);
  Widget opacity(double shade) {
    assert(shade >= 0.0 && shade <= 1.0);
    return Opacity(opacity: shade, child: this);
  }
}

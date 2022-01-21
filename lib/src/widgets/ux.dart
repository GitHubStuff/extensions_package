import 'package:flutter/material.dart';

const EdgeInsetsGeometry _paddingBetweenWidgets = EdgeInsets.only(right: 8.0);

class UX {
  // Set appbar title to String, Widget, [Widgets]
  // NOTE: can do [TextStyle, string,...], and the text style will be applied to all the following strings
  static Row appBarWidgets(dynamic stuff, {EdgeInsetsGeometry? padding, double appBarHeight = 32.0}) {
    assert(stuff != null);
    assert(appBarHeight >= 0.0);
    List<dynamic> items = (stuff is List) ? stuff : [stuff];
    final List<Widget> result = [];
    final EdgeInsetsGeometry itemPadding = padding ?? _paddingBetweenWidgets;
    TextStyle? textStyle;
    for (dynamic item in items) {
      if (item is Image) {
        final resizedImage = Image(
          image: item.image,
          height: appBarHeight,
          fit: BoxFit.fitHeight,
        );
        result.add(Padding(padding: itemPadding, child: resizedImage));
        continue;
      }
      if (item is AssetImage) {
        result.add(Padding(
          padding: itemPadding,
          child: Image(
            image: item,
            height: appBarHeight,
            width: appBarHeight,
            fit: BoxFit.fitHeight,
          ),
        ));
        continue;
      }
      if (item is TextStyle) {
        textStyle = item;
        continue;
      }
      if (item is String) {
        result.add(Padding(
          padding: itemPadding,
          child: Text(item, style: textStyle),
        ));
        continue;
      }
      assert(item is Widget);
      result.add(item);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: result,
    );
  }
}

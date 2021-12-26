import 'package:flutter/material.dart';

extension ImageExtension on Image {
  Widget get leftRotation => rotate(percentage: -0.25);
  Widget get rightRotation => rotate(percentage: 0.25);
  Widget get upsideDownRotation => rotate(percentage: 0.5);
  Widget rotate({required double percentage}) => RotationTransition(turns: AlwaysStoppedAnimation(percentage), child: this);
}

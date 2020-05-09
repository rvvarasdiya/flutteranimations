import 'dart:ui';

import 'package:flutter/animation.dart';

class RectForAnimation extends RectTween {
  RectForAnimation({Rect begin, Rect end}) : super(begin: begin, end: end) {}

  @override
  Rect lerp(double t) {
    final double width = lerpDouble(begin.width, end.width, t);
    double startWidthCenter = begin.left + (begin.width / 2);
    double startHeightCenter = begin.top + (begin.height / 2);

    return Rect.fromCircle(
      center: Offset(startWidthCenter, startHeightCenter),
      radius: width * 1.7,
    );
  }
}

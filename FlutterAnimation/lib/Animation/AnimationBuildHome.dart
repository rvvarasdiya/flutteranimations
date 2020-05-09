import 'dart:math';
import 'dart:ui' as ui;
import 'package:FlutterAnimations/Constant/ColorGlobal.dart';
import 'package:vector_math/vector_math.dart' as Vector;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'dart:math' as math;

class AnimationBuild extends StatefulWidget {
  @override
  _AnimationBuildState createState() => _AnimationBuildState();

}

class _AnimationBuildState extends State<AnimationBuild> {
  @override
  Widget build(BuildContext context) {
    Size size = Size(MediaQuery.of(context).size.width, 200.0);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.9,
            child: DemoBody(
              size: size,
              xOffset: 50,
              yOffset: 20,
              color: ColorGlobal.colorAccent,
            ),
          ),
          DemoBody(
            size: size,
            xOffset: 0,
            yOffset: 0,
            color: ColorGlobal.colorPrimaryDark,
          ),
          DemoBody(
            size: size,
            xOffset: 60,
            yOffset: 10,
            color: ColorGlobal.colorPrimary.withOpacity(0.85),
          ),
//
        ],
      ),
    );
  }
}

class DemoBody extends StatefulWidget {
  final Size size;
  final int xOffset;
  final int yOffset;
  final Color color;

  DemoBody(
      {Key key, @required this.size, this.xOffset, this.yOffset, this.color})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DemoBodyState();
  }
}

class _DemoBodyState extends State<DemoBody> with TickerProviderStateMixin {
  AnimationController animationController;
  List<Offset> animList1 = [];

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    animationController.addListener(() {
      animList1.clear();
      for (int i = -2 - widget.xOffset;
      i <= widget.size.width.toInt() + 2;
      i++) {
        animList1.add(Offset(
            i.toDouble() + widget.xOffset,
            sin((animationController.value * 180 - i) % 180 * math.pi / 90.0) *
                12 +
                120 +
                widget.yOffset));
      }
    });
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedBuilder(
        animation: CurvedAnimation(
          parent: animationController,
          curve: Curves.easeInOut,
        ),
        builder: (context, child) => ClipPath(
          child: Container(
            width: widget.size.width,
            height: widget.size.height,
            color: widget.color,
          ),
          clipper: WaveClipper(animationController.value, animList1),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  final double animation;

  List<Offset> waveList1 = [];

  WaveClipper(this.animation, this.waveList1);

  @override
  Path getClip(Size size) {
    Path path = Path();

    path.addPolygon(waveList1, false);

    path.lineTo(size.width, 0);
    path.lineTo(0.0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(WaveClipper oldClipper) =>
      animation != oldClipper.animation;
}
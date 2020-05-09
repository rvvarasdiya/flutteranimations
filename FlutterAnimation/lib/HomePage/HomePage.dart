import 'dart:ui';

import 'package:FlutterAnimations/Animation/AnimationBuildHome.dart';
import 'package:flutter/material.dart';
import 'package:FlutterAnimations/Animation/AnimationBuildHome.dart';
import 'package:FlutterAnimations/Constant/ColorGlobal.dart';
import 'package:FlutterAnimations/Constant/ReactForAnimation.dart';
import 'package:FlutterAnimations/Constant/frequentWidget.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Hero(
        tag: 'blackBox',
        createRectTween: _createRectTween,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 180,
                  child: Stack(
                    children: <Widget>[
                      AnimationBuild(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 40, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    "Home",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: ColorGlobal.whiteColor,
                                        fontSize: 24),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Welcome home, Raj",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: ColorGlobal.whiteColor,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getSize(40),
                            width: getSize(40),
                            margin: EdgeInsets.only(top: 50, right: 20),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 1.5),
                            ),
                            child: Image.asset("assets/Icon/myphoto.png"),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorGlobal.accentSecond,
                              ),
                              height: 22,
                              width: 22,
                              child: Icon(
                                Icons.attach_money,
                                size: 15,
                                color: ColorGlobal.whiteColor,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "Watch Your Transaction",
                                style: TextStyle(
                                    color: ColorGlobal.colorPrimary,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            )
                          ],
                        ),
                        Container(
                            child: Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: ColorGlobal.colorPrimary,
                        ))
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 30),
                  decoration: BoxDecoration(
                    color: ColorGlobal.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 20,
                        // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(11)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color:
                                      ColorGlobal.blueColor.withOpacity(0.25)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "29",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: ColorGlobal.blueColor),
                                  ),
                                  Text(
                                    "Jan",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: ColorGlobal.blueColor),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "New York",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w800,
                                        color: ColorGlobal.colorPrimary),
                                  ),
                                  Text(
                                    "In 2 month",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        color: ColorGlobal.colorPrimary),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                getImage(
                                  "assets/Icon/staue.jpg",
                                ),
                                getImage(
                                  "assets/Icon/bridge.jpg",
                                ),
                                getImage(
                                  "assets/Icon/build.jpg",
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Divider(
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Offer in New York",
                              style: TextStyle(
                                fontSize: 16,
                                color: ColorGlobal.colorPrimary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.red, width: 1.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: 10.0, right: 10.0, top: 8, bottom: 8),
                                child: Container(
                                  child: Text(
                                    "+50 Dollars",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: Divider(
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 8),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    color: ColorGlobal.blueColor,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0,
                                        right: 10.0,
                                        top: 5,
                                        bottom: 5),
                                    child: Container(
                                        child: Icon(
                                      Icons.add,
                                      size: 20,
                                      color: ColorGlobal.whiteColor,
                                    )),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20,top: 5),
                                  child: Text(
                                    "Add to wishlist",

                                    style: TextStyle(
                                      fontSize: 16,
                                      color: ColorGlobal.colorPrimary,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                                color: ColorGlobal.colorPrimary,
                              ),
                            )
                          ],
                        ),
                      ),

//                    Padding(
//                      padding:  EdgeInsets.only(left:15,right: 15,top: 15),
//                    )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  static RectTween _createRectTween(Rect begin, Rect end) {
    return RectForAnimation(begin: begin, end: end);
//  return Future.delayed(Duration(microseconds: ),())
  }
}

import 'package:flutter/material.dart';

import 'ColorGlobal.dart';


Widget getImage(String imgName){
  return        Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        imgName ??  "assets/Icon/staue.jpg",
        width: 100,
        height: 100,
      ),
    ),
  );
}
Widget getAuth(String imageName, {EdgeInsetsGeometry margin}) {
  return Container(
//    margin: EdgeInsets.only(left: 35.0),
    margin: margin,
    decoration: BoxDecoration(
//      boxShadow: [
//        BoxShadow(
//          color: ColorGlobal.colorPrimary.withOpacity(0.4),
//          spreadRadius: 1,
//          blurRadius: 10,
//          // changes position of shadow
//        ),
//      ],
      color: ColorGlobal.colorPrimary.withOpacity(0.1),
      shape: BoxShape.circle,
    ),
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Image.asset(
        imageName,
        height: 28,
        width: 28,
      ),
    ),
  );
}



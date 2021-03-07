import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';

Widget textLabel(text, fontSize, fontWeight) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'OpenSans',
      fontSize: fontSize,
      color: black0,
      fontWeight: fontWeight,
    ),
  );
}

Widget categoryView(w, text, topColor, bottomColor) {
  return Container(
    padding: EdgeInsets.only(left: 10.0, right: 10.0),
    width: w,
    height: 50.0,
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
      color: white225,
      border: Border(
        left: BorderSide(
            color: Colors.black,
            width: 1.5),
        right: BorderSide(
            width: 1.5,
            color: Colors.black),
        top: BorderSide(
            width: 1.5,
            color: topColor),
        bottom: BorderSide(
            width: 1.5,
            color: bottomColor),
      ),
    ),
    child: textLabel(text, 20.0, null),
  );
}

Widget tabLabel(text, fontSize, fontWeight) {
  return Container(
    child: Align(
      alignment: Alignment.center,
      child: textLabel(text, fontSize, fontWeight)
    ),
  );
}











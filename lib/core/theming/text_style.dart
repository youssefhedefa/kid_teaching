import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/theming/colors.dart';

class TextStyleProvider {

  static TextStyle splashScreenTextRegular120 = TextStyle(
    color: ColorProvider.splashTextColor,
      fontFamily: 'Summary_notes',
      fontSize: 120.sp,
  );

  static TextStyle splashScreenTextStrokeRegular120 = TextStyle(
    fontFamily: 'Summary_notes',
    fontSize: 120.sp,
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.white
  );

  static TextStyle homeScreenTitleRegular48 = TextStyle(
    fontSize: 48.sp,
    color: Colors.white,
    fontFamily: 'Summary_notes',
  );

  static TextStyle homeScreenTitleStrokeRegular48 = TextStyle(
      fontFamily: 'Summary_notes',
      fontSize: 48.sp,
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.0
        ..color = Colors.black
  );

}

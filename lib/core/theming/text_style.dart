import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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

  static TextStyle homeFloatingActionBottomCounterSemiBold14 = GoogleFonts.montserrat(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle homeFloatingActionBottomNameRegular14 = TextStyle(
    color: ColorProvider.homeFloatingActionBottomNameColor,
    fontFamily: 'Summary_notes',
    fontSize: 14.sp,
  );

  static TextStyle fontRed24Regular = TextStyle(
    fontFamily: 'Summary_notes',
    fontSize: 24.sp,
    color: const Color(0xffEF3349),
  );

}

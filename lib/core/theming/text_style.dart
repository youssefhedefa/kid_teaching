import 'package:flutter/material.dart';
import 'package:kid_teaching/core/theming/colors.dart';

class TextStyleProvider {
  static TextStyle splashScreenTextRegular120 = const TextStyle(
    color: ColorProvider.splashTextColor,
      fontFamily: 'Summary_notes',
      fontSize: 120,
  );

  static TextStyle splashScreenTextStrokeRegular120 = TextStyle(
    fontFamily: 'Summary_notes',
    fontSize: 120,
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.white
  );
}

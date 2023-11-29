import 'package:flutter/material.dart';
import 'package:kid_teaching/core/theming/text_style.dart';

class AppLogoText extends StatelessWidget {
  const AppLogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          'LO LO',
          style: TextStyleProvider.splashScreenTextRegular120,
        ),
        Text(
          'LO LO',
          style: TextStyleProvider.splashScreenTextStrokeRegular120,
        ),
      ],
    );
  }
}

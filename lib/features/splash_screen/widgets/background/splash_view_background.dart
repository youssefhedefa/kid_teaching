import 'package:flutter/material.dart';

import 'background_waves.dart';
import 'custom_rectangle.dart';
import 'footer_of_splash_screen.dart';

class SplashViewBackground extends StatelessWidget {
  const SplashViewBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Column(
                children: [
                  CustomRectangle(color: Color(0xffF27728)),
                  CustomRectangle(color: Color(0xffFFCF25)),
                ],
              ),
              BackgroundWaves(),
              Positioned(
                bottom: 0,
                child: FooterOfSplashScreen(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

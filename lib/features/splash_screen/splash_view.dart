import 'package:flutter/material.dart';
import 'package:kid_teaching/core/theming/colors.dart';
import 'widgets/background_waves.dart';
import 'widgets/custom_rectangle.dart';
import 'widgets/footer_of_splash_screen.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorProvider.splashBackGround,
      body: SafeArea(
        child: Column(
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
        ),
      ),
    );
  }
}


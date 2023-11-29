import 'package:flutter/material.dart';
import 'package:kid_teaching/core/theming/colors.dart';
import 'widgets/background/splash_view_background.dart';
import 'widgets/front_view/splash_front_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorProvider.splashBackGround,
      body: SafeArea(
        child: Stack(
          children: [
            SplashViewBackground(),
            SplashViewFrontView(),
          ],
        ),
      ),
    );
  }
}



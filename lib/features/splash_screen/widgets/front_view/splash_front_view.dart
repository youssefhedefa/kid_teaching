import 'package:flutter/material.dart';
import 'package:kid_teaching/features/splash_screen/widgets/animation/starts_animation.dart';
import 'app_logo_text.dart';
import 'splash_top_view.dart';

class SplashViewFrontView extends StatelessWidget {
  const SplashViewFrontView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SplashTopView(),
          CustomOpacityAnimated(
            widget: AppLogoText(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
          AppLogoText(),
        ],
      ),
    );
  }
}

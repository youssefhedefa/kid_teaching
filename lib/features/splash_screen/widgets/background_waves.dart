import 'package:flutter/material.dart';
import 'package:kid_teaching/core/helper/image_provider.dart';

class BackgroundWaves extends StatelessWidget {
  const BackgroundWaves({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Image(
          image: AssetImage(AssetProvider.scarf1Image),),
        Image(
          image: AssetImage(AssetProvider.scarf2Image),
        ),
      ],
    );
  }
}

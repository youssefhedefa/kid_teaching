import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/helper/image_provider.dart';
import 'package:kid_teaching/features/splash_screen/widgets/animation/penguin_animation.dart';
import 'package:kid_teaching/features/splash_screen/widgets/animation/starts_animation.dart';

class SplashTopView extends StatelessWidget {
  const SplashTopView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 300.h,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 28.h,
            child: CustomOpacityAnimated(
              widget :  Image(
                width: 194.w,
                height: 320.h,
                image: const AssetImage(
                  AssetImageProvider.topStartsImage,
                ),
              ),
            ),
          ),
          Positioned(
            top: 28.h,
            left: MediaQuery.of(context).size.width - 107.w,
              child: const PenguinAnimation(),
          ),
        ],
      ),
    );
  }
}

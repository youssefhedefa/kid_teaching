import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/helper/image_provider.dart';
import 'package:kid_teaching/features/splash_screen/widgets/animation/bird_animation.dart';
import 'package:kid_teaching/features/splash_screen/widgets/animation/cat_animation.dart';
import 'package:kid_teaching/features/splash_screen/widgets/animation/starts_animation.dart';


class FooterOfSplashScreen extends StatelessWidget {
  const FooterOfSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 220.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Positioned(
            left: 0,
            top: 30.h,
            child: const BirdAnimation(),
          ),
          Positioned(
            left: 116.w,
              bottom: 0,
              child: const CatAnimation(),
          ),
          CustomOpacityAnimated(
            widget: Image(
              width: 180.w,
              height: 250.h,
              image: const AssetImage(
                AssetImageProvider.bottomStartsImage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
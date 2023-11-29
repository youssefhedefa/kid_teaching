import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/helper/image_provider.dart';

class SplashTopView extends StatelessWidget {
  const SplashTopView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Positioned(
            left: 0,
            top: 28.h,
            child: const Image(
              width: 200,
              height: 320,
              image: AssetImage(
                AssetImageProvider.topStartsImage,
              ),
            ),
          ),
          Positioned(
            top: 28.h,
            right: 0,
            child: const Image(
              height: 146,
              image: AssetImage(
                AssetImageProvider.penguinImage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

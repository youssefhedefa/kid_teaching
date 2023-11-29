import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/helper/image_provider.dart';


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
            child: Image(
              width: 170.w,
              image: const AssetImage(
                AssetProvider.birdImage,
              ),
            ),
          ),
          Positioned(
            left: 120,
            child: Image(
              width: 148.w,
              image: const AssetImage(
                AssetProvider.catImage,
              ),
            ),
          ),
          Positioned(
            child: Image(
              width: 180.w,
              height: 250.h,
              image: const AssetImage(
                AssetProvider.bottomStartsImage,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

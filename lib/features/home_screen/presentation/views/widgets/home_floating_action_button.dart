import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/helper/image_provider.dart';
import 'package:kid_teaching/core/theming/colors.dart';
import 'package:kid_teaching/core/theming/text_style.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      height: 95.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: 82.w,
            height: 82.h,
            decoration: BoxDecoration(
              color: ColorProvider.floatingActionButtonBackgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width:42.w,
                  height: 42.h,
                  image: const AssetImage(
                    AssetImageProvider.candyImage,
                  ),
                ),
                Text(
                  'My Candies',
                  style: TextStyleProvider.homeFloatingActionBottomNameRegular14,
                ),
              ],
            ),
          ),
          Positioned(
            left: 60.w,
            bottom: 66.h,
            child: CircleAvatar(
              radius: 14.dm,
              backgroundColor: const Color(0xffEF3349),
              child: Text(
                '16',
                style: TextStyleProvider.homeFloatingActionBottomCounterSemiBold14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

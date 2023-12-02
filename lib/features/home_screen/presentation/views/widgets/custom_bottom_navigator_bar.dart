

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/helper/image_provider.dart';
import 'package:kid_teaching/core/theming/colors.dart';

import 'bottom_nav_item.dart';

class CustomBottomNavigatorBar extends StatelessWidget {
  const CustomBottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 244.w,
      height: 82.h,
      decoration: BoxDecoration(
        color: ColorProvider.floatingActionButtonBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 4.w,),
          const BottomItemNav(image: AssetImageProvider.puzzleImage,),
          const BottomItemNav(image: AssetImageProvider.homeImage,),
          const BottomItemNav(image: AssetImageProvider.bearImage,),
          SizedBox(width: 4.w,),

        ],
      ),
    );
  }
}

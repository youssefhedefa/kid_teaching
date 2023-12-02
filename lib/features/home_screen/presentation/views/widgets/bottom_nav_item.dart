

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/theming/colors.dart';

class BottomItemNav extends StatelessWidget {
  const BottomItemNav({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58.w,
      height: 58.h,
      decoration: BoxDecoration(
        color: ColorProvider.bottomNavItemColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Image(
          width: 42.w,
          height: 42.h,
          image: AssetImage(image),),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/helper/image_provider.dart';
import 'custom_bottom_navigator_bar.dart';
import 'home_view_title.dart';
import 'indicator_bar.dart';
import 'start_button.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          const Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            left: 0,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetImageProvider.homeBackgroundImage,
              ),
            ),
          ),
          Positioned(
            left: 16.w,
            top: 66.h,
            child: const HomeViewTitle(),
          ),
          Positioned(
            top: 210.h,
            left: 16.w,
            child: const IndicatorBar(),
          ),
          Positioned(
            top: 320.h,
            left: 100.w,
            child: const StartButton(),
          ),
          Positioned(
            left: 16.w,
            bottom: 15.h,
            child: const CustomBottomNavigatorBar(),
          ),
        ],
      ),
    );
  }
}



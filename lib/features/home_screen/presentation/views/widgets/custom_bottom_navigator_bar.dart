import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/helper/image_provider.dart';
import 'package:kid_teaching/core/theming/colors.dart';
import 'package:kid_teaching/features/home_screen/presentation/views/animations/animated_nav_bar_item.dart';

class CustomBottomNavigatorBar extends StatefulWidget {
  const CustomBottomNavigatorBar({super.key});

  @override
  State<CustomBottomNavigatorBar> createState() =>
      _CustomBottomNavigatorBarState();
}

class _CustomBottomNavigatorBarState extends State<CustomBottomNavigatorBar> {


  int currentIndex = 0;
  List<String> labels = ['Puzzles', 'Home', 'Prizes',];
  List<String> images = [
    AssetImageProvider.puzzleImage,
    AssetImageProvider.homeImage,
    AssetImageProvider.bearImage,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 244.w,
      height: 82.h,
      decoration: BoxDecoration(
        color: ColorProvider.floatingActionButtonBackgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListView.separated(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(vertical: 12.h,horizontal: 12.w),
        itemCount: 3,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: AnimatedNavItem(
            label: labels[index],
            clicked: currentIndex == index,
            image: images[index],
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(
          width: 20.w,
        ),
      ),
    );
  }
}


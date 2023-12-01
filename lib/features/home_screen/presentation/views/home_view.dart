import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/helper/image_provider.dart';
import 'widgets/home_view_title.dart';
import 'widgets/indicator_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
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
          ],
        ),
      ),
    );
  }
}



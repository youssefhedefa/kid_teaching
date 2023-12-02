

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/helper/image_provider.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Image(
        width: 160.w,
        height: 60.h,
        image: const AssetImage(
          AssetImageProvider.startButtonImage,
        ),
      ),
    );
  }
}

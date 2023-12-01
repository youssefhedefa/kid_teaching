
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kid_teaching/core/theming/colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class IndicatorBar extends StatelessWidget {
  const IndicatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: LinearPercentIndicator(
        barRadius: const Radius.circular(8),
        width: 410.w,
        animation: true,
        lineHeight: 20.0.w,
        animationDuration: 2000,
        percent: 0.6,
        progressColor: ColorProvider.progressColor,
        isRTL: true,

      ),
    );
  }
}

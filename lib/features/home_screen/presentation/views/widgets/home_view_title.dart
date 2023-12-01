import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kid_teaching/core/theming/text_style.dart';

class HomeViewTitle extends StatelessWidget {
  const HomeViewTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello Little',
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 16.sp,
          ),
        ),
        Stack(
          children: [
            Text(
              'OLIVER',
              style: TextStyleProvider.homeScreenTitleRegular48,
            ),
            Text(
              'OLIVER',
              style: TextStyleProvider.homeScreenTitleStrokeRegular48,
            ),
          ],
        ),
      ],
    );
  }
}

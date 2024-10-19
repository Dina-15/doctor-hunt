import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';

class DrawBgCircle extends StatelessWidget {
  const DrawBgCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -30.h,
      left: -130.w,
      child: Container(
        width: 340.w,
        height: 340.h,
        decoration: BoxDecoration(shape: BoxShape.circle,
        color: AppColors.primaryColor),
      ),
    );
  }
}

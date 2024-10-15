import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildSmoothIndicator extends StatelessWidget {
  const BuildSmoothIndicator(
      {super.key, required this.index, required this.currPageIndex});
  final int index;
  final int currPageIndex;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 250),
      width: 10.w,
      height: 10.h,
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == currPageIndex
            ? AppColors.primaryColor
            : Colors.grey[350],
      ),
    );
  }
}

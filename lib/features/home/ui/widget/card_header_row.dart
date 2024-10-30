import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardHeaderRow extends StatelessWidget {
  const CardHeaderRow({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.getSemiBoldStyle(
              color: AppColors.boldTextColor),
        ),
        Text(
          "See all    ",
          style: AppStyles.getSemiRegularStyle(fontSize: 12.sp),
        ),
      ],
    );
  }
}

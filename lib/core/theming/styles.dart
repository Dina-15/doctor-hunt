import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'font_weight.dart';

class AppStyles {
  static TextStyle font28DarkBlackBold = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeightManager.bold,
    color: Colors.black,
  );
  static TextStyle font28LightBlackBold = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeightManager.bold,
    color: AppColors.boldTextColor,
  );
  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: AppColors.secondaryColor,
  );
}
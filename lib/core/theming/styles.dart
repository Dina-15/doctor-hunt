import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'font_weight.dart';

class TextStyles {
  static TextStyle font24DarkBlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightManager.bold,
    color: Colors.black,
  );
  static TextStyle font24LightBlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightManager.bold,
    color: ColorsManager.boldTextColor,
  );
  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.thinTextColor,
  );
}
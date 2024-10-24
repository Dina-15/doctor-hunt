import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/styles.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? elevation;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
    this.elevation,
    this.textStyle,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(elevation?? 1),
        fixedSize: WidgetStatePropertyAll(
          Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 50.h),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
          ),
        ),
        backgroundColor: WidgetStateProperty.all(
            backgroundColor ?? AppColors.primaryColor),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
              horizontal: horizontalPadding?.w ?? 0.w,
              vertical: verticalPadding?.h ?? 0.h),
        ),
      ),
      child: Text(buttonText,
      style: AppStyles.getBoldStyle(color: Colors.white),
      overflow: TextOverflow.ellipsis,),
    );
  }
}

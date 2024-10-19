import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:doctor_hunt/core/widgets/app_text_button.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonWidth: 270.w,
      buttonHeight: 42.h,
      buttonText: text,
      textStyle: AppStyles.font18WhiteRegular,
      onPressed: onPressed,
    );
  }
}

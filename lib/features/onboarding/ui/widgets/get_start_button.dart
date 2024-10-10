import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/app_text_button.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  AppTextButton(
      buttonText: 'Get Started',
      textStyle: TextStyle(color: Colors.white,
          fontSize: 18),
      borderRadius: 15,
      buttonHeight:  40.h,
      buttonWidth: 250.w,
      onPressed: onPressed
    );
  }
}
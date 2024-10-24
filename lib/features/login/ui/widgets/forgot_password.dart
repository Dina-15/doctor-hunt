import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Forgot Password",
        style: AppStyles.getRegularStyle().copyWith(
          color: AppColors.primaryColor,
        ),
        // recognizer: TapGestureRecognizer()..onTap = (){
        //   Navigator.pushNamed(context, Routes.ForgotPassScreen);
        // }
      ),
    );
  }
}

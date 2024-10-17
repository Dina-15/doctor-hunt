import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';


class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
          TextSpan(text: "Don’t have an account?",
              style: AppStyles.font14GrayRegular),
          TextSpan(text: " Join us",
            style: AppStyles.font14GrayRegular.copyWith(
            color: AppColors.primaryColor,
          ),
            recognizer: TapGestureRecognizer()..onTap = (){
              Navigator.pushReplacementNamed(context, Routes.signUpScreen);
            }
          ),
        ]
        ),
    );
  }
}
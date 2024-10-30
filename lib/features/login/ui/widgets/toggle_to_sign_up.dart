import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';

class ToggleToSignUp extends StatelessWidget {
  const ToggleToSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "Don’t have an account? ",
            style: AppStyles.getRegularStyle(color: AppColors.secondaryColor)),
        TextSpan(
            text: " Join us",
            style: AppStyles.getRegularStyle(),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, Routes.signUpScreen);
              }),
      ]),
    );
  }
}

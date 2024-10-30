import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';

class ToggleToLogin extends StatelessWidget {
  const ToggleToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(text: "Have an account? ", style: AppStyles.getRegularStyle(color: AppColors.secondaryColor)),
        TextSpan(
            text: " Login",
            style: AppStyles.getRegularStyle(),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushReplacementNamed(context, Routes.loginScreen);
              })
      ]),
    );
  }
}

import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';

class HaveAccountText extends StatelessWidget {
  const HaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children:
        [
          TextSpan(text: "Have an account?",
          style: AppStyles.font14GrayRegular
          ),
          TextSpan(text: " Login",
          style: AppStyles.font14GrayRegular.copyWith(
            color: AppColors.primaryColor,
          ),
            recognizer: TapGestureRecognizer()..onTap = () {
                Navigator.pushReplacementNamed(context, Routes.loginScreen);
              }
          )
        ]
        ),

    );
  }
}
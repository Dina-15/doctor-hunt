import 'package:doctor_hunt/core/constants/app_strings.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';

class SignUpHeaderText extends StatelessWidget {
  const SignUpHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        AppStrings.signUpTitle,
        style: AppStyles.getBoldStyle(),
      ),
      verticalSpace(5),
      Text(
        AppStrings.signUpSubTitle,
        style: AppStyles.getRegularStyle(color: AppColors.secondaryColor),
        textAlign: TextAlign.center,
      )
    ],);
  }
}

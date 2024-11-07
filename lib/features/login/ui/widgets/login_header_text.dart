import 'package:doctor_hunt/core/constants/app_strings.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';

class LoginHeaderText extends StatelessWidget {
  const LoginHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.loginTitle,
          style: AppStyles.getBoldStyle(),
        ),
        verticalSpace(15),
        Text(
          AppStrings.loginSubTitle,
          style: AppStyles.getRegularStyle(color: AppColors.secondaryColor),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

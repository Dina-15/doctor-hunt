import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:doctor_hunt/core/widgets/app_text_button.dart';
import 'package:doctor_hunt/features/sign_up/ui/widgets/signup_options_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_hunt/features/sign_up/ui/widgets/name_text_field.dart';
import 'package:doctor_hunt/core/widgets/password_text_field.dart';
import 'package:doctor_hunt/core/widgets/email_text_field.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/constants/app_strings.dart';
import 'check_privacy_text.dart';
import 'toggle_to_login.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<SignUpBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(80),
          Text(
            AppStrings.signUpTitle,
            style: AppStyles.getBoldStyle(),
          ),
          verticalSpace(15),
          Text(
            AppStrings.signUpSubTitle,
            style: AppStyles.getRegularStyle(color: AppColors.secondaryColor),
            textAlign: TextAlign.center,
          ),
          verticalSpace(40),
          const SignupOptionsRow(),
          verticalSpace(30),
          Form(
              key: _formKey,
              child: Column(
                children: [
                  const NameTextField(),
                  verticalSpace(18),
                  const EmailTextField(),
                  verticalSpace(18),
                  const PasswordTextField(),
                ],
              ),
          ),
          verticalSpace(5),
          const CheckPrivacyText(),
          verticalSpace(15),
          AppTextButton(
            buttonWidth: 270.w,
            buttonHeight: 42.h,
            buttonText: "Sign up",
            onPressed: () {
              // if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, Routes.navigationMainScaffold);
              // }
            },
          ),
          verticalSpace(20),
          const ToggleToLogin(),
          verticalSpace(20),
        ],
      ),
    );
  }
}

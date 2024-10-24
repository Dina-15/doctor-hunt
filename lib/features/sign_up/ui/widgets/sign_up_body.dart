import 'package:doctor_hunt/core/widgets/app_text_button.dart';
import 'package:doctor_hunt/features/sign_up/ui/widgets/signup_options_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_hunt/features/sign_up/ui/widgets/name_text_field.dart';
import 'package:doctor_hunt/core/widgets/password_text_field.dart';
import 'package:doctor_hunt/core/widgets/email_text_field.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/widgets/auth_header_column.dart';
import 'package:doctor_hunt/core/constants/auth_header_text.dart';
import 'check_privacy_text.dart';
import 'have_account_text.dart';

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
          verticalSpace(100),
          const AuthHeaderColumn(
            title: AuthHeaderText.signUpTitle,
            subtitle: AuthHeaderText.signUpSubTitle,
          ),
          verticalSpace(50),
          const SignupOptionsRow(),
          verticalSpace(37),
          Form(
            key: _formKey,
              child: Column(
            children: [
              NameTextField(),
              verticalSpace(18),
              const EmailTextField(),
              verticalSpace(18),
              const PasswordTextField(),
            ],
          )),
          const CheckPrivacyText(),
          verticalSpace(6),
          AppTextButton(
            buttonWidth: 270.w,
            buttonHeight: 42.h,
            buttonText: "Sign up",
            onPressed: () {
              if (_formKey.currentState!.validate()) print("Valid");
            },
          ),
          verticalSpace(20),
          const HaveAccountText(),
          verticalSpace(20),
        ],
      ),
    );
  }
}

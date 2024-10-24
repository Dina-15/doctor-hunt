import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_hunt/core/widgets/auth_header_column.dart';
import 'package:doctor_hunt/core/constants/auth_header_text.dart';
import 'package:doctor_hunt/core/widgets/app_text_button.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/features/login/ui/widgets/login_options_row.dart';
import 'package:doctor_hunt/core/widgets/password_text_field.dart';
import 'package:doctor_hunt/core/widgets/email_text_field.dart';
import 'package:doctor_hunt/features/login/ui/widgets/toggle_to_sign_up.dart';
import 'package:doctor_hunt/features/login/ui/widgets/forgot_password.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          verticalSpace(120),
          const AuthHeaderColumn(
            title: AuthHeaderText.loginTitle,
            subtitle: AuthHeaderText.loginSubTitle,
          ),
          verticalSpace(60),
          const LoginOptionsRow(),
          verticalSpace(37),
          Form(
            key: _formKey,
            //! then this key will be called from cubit
            child: Column(
              children: [
                const EmailTextField(),
                verticalSpace(18),
                const PasswordTextField(),
              ],
            ),
          ),
          verticalSpace(30),
          AppTextButton(
            buttonWidth: 270.w,
            buttonHeight: 42.h,
            buttonText: "Login",
            onPressed: () {
              if (_formKey.currentState!.validate()) print("Valid");
            },
          ),
          verticalSpace(15),
          const ForgotPassword(),
          verticalSpace(40),
          const ToggleToSignUp(),
          verticalSpace(20),
        ],
      ),
    );
  }
}

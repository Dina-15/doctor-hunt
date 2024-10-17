import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/features/login/ui/widgets/custom_button.dart';
import 'package:doctor_hunt/features/login/ui/widgets/auth_options.dart';
import 'package:doctor_hunt/features/login/ui/widgets/pass_text_field.dart';
import 'package:doctor_hunt/features/login/ui/widgets/email_text_field.dart';
import 'package:doctor_hunt/features/login/data/models/auth_page_model.dart';
import 'package:doctor_hunt/features/login/logic/entities/login_entity.dart';
import 'package:doctor_hunt/features/login/ui/widgets/welcoming_text.dart';
import 'package:doctor_hunt/features/login/ui/widgets/dont_have_account.dart';
import 'package:doctor_hunt/features/login/ui/widgets/forgot_password.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  AuthPageModel loginModel = LoginEntity().loginModel;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          verticalSpace(120),
          WelcomingText(
            title: loginModel.title,
            subtitle: loginModel.subtitle,
          ),
          verticalSpace(60),
          const AuthOptions(),
          verticalSpace(37),
          Form(
            key: _formKey,
            child: Column(
              children: [
                const EmailTextField(),
                verticalSpace(18),
                const PassTextField(),
              ],
            ),
          ),
          verticalSpace(30),
          CustomButton(
            text: "Login",
            onPressed: () {
              if (_formKey.currentState!.validate()) print("Valid");
            },
          ),
          verticalSpace(15),
          const ForgotPassword(),
          verticalSpace(40),
          const DontHaveAccount(),
          verticalSpace(20),
        ],
      ),
    );
  }
}

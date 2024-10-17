import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_hunt/features/sign_up//logic/entities/sign_up_entity.dart';
import 'package:doctor_hunt/features/sign_up/ui/widgets/name_text_field.dart';
import 'package:doctor_hunt/features/login//ui/widgets/custom_button.dart';
import 'package:doctor_hunt/features/login/ui/widgets/auth_options.dart';
import 'package:doctor_hunt/features/login/ui/widgets/pass_text_field.dart';
import 'package:doctor_hunt/features/login/ui/widgets/email_text_field.dart';
import 'package:doctor_hunt/features/login/data/models/auth_page_model.dart';
import 'package:doctor_hunt/features/login/ui/widgets/welcoming_text.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'check_privacy_text.dart';
import 'have_account_text.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<SignUpBody> {
  AuthPageModel signUpModel = SignUpEntity().signUpModel;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(100),
          WelcomingText(
            title: signUpModel.title,
            subtitle: signUpModel.subtitle,
          ),
          verticalSpace(60),
          const AuthOptions(),
          verticalSpace(37),
          Form(
            key: _formKey,
              child: Column(
            children: [
              NameTextField(),
              verticalSpace(18),
              const EmailTextField(),
              verticalSpace(18),
              const PassTextField(),
            ],
          )),
          const CheckPrivacyText(),
          verticalSpace(6),
          CustomButton(
            text: "Sign up",
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

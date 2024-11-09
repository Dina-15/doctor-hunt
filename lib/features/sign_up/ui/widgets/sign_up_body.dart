import 'package:doctor_hunt/core/widgets/app_text_button.dart';
import 'package:doctor_hunt/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doctor_hunt/features/sign_up/ui/widgets/confirm_password_text_field.dart';
import 'package:doctor_hunt/features/sign_up/ui/widgets/gender_text_field.dart';
import 'package:doctor_hunt/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:doctor_hunt/features/sign_up/ui/widgets/signup_options_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_hunt/features/sign_up/ui/widgets/name_text_field.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'check_privacy_text.dart';
import 'phone_text_field.dart';
import 'sign_up_email_text_field.dart';
import 'sign_up_header_text.dart';
import 'sign_up_password_text_field.dart';
import 'toggle_to_login.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _LoginBodyState();
}

late TextEditingController nameController1;
late TextEditingController emailController1;
late TextEditingController passwordController1;
late TextEditingController phoneController1;
late TextEditingController genderController1;
late TextEditingController confirmPasswordController1;

class _LoginBodyState extends State<SignUpBody> {
  @override
  void initState() {
    super.initState();
    nameController1 = context.read<SignUpCubit>().nameController1;
    emailController1 = context.read<SignUpCubit>().emailController1;
    passwordController1 = context.read<SignUpCubit>().passwordController1;
    phoneController1 = context.read<SignUpCubit>().phoneController1;
    genderController1 = context.read<SignUpCubit>().genderController1;
    confirmPasswordController1 =
        context.read<SignUpCubit>().confirmPasswordController1;
  }
  @override
  void dispose() {
    nameController1.dispose();
    emailController1.dispose();
    passwordController1.dispose();
    phoneController1.dispose();
    genderController1.dispose();
    confirmPasswordController1.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(40),
          const SignUpHeaderText(),
          verticalSpace(20),
          const SignupOptionsRow(),
          verticalSpace(20),
          Form(
            key: context.read<SignUpCubit>().signUpFormKey,
            child: Column(
              children: [
                NameTextField(
                  nameController: nameController1,
                ),
                verticalSpace(20),
                SignUpEmailTextField(emailController: emailController1),
                verticalSpace(20),
                PhoneTextField(phoneController: phoneController1),
                verticalSpace(20),
                GenderTextField(genderController: genderController1),
                verticalSpace(20),
                SignUpPasswordTextField(passwordController: passwordController1),
                verticalSpace(20),
                ConfirmPasswordTextField(
                    confirmPasswordController: confirmPasswordController1)
              ],
            ),
          ),
          verticalSpace(10),
          const CheckPrivacyText(),
          verticalSpace(15),
          AppTextButton(
            buttonWidth: 270.w,
            buttonHeight: 42.h,
            buttonText: "Sign up",
            onPressed: () {
              if (context
                  .read<SignUpCubit>()
                  .signUpFormKey
                  .currentState!
                  .validate()) {
                context.read<SignUpCubit>().emitSignUpStates();
              }
            },
          ),
          verticalSpace(15),
          const ToggleToLogin(),
          const SignUpBlocListener(),
          verticalSpace(20),
        ],
      ),
    );
  }
}

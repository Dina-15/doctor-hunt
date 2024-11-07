import 'package:doctor_hunt/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_hunt/core/widgets/app_text_button.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/features/login/ui/widgets/login_options_row.dart';
import 'package:doctor_hunt/core/widgets/email_text_field.dart';
import 'package:doctor_hunt/features/login/ui/widgets/toggle_to_sign_up.dart';
import 'package:doctor_hunt/features/login/ui/widgets/forgot_password.dart';
import 'login_bloc_listener.dart';
import 'login_header_text.dart';
import 'package:doctor_hunt/core/widgets/password_text_field.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

late TextEditingController emailController;
late TextEditingController passwordController;

class _LoginBodyState extends State<LoginBody> {
  @override
  void initState() {
    super.initState();
    emailController = context.read<LoginCubit>().emailController;
    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          verticalSpace(100),
          const LoginHeaderText(),
          verticalSpace(50),
          const LoginOptionsRow(),
          verticalSpace(30),
          Form(
            key: context.read<LoginCubit>().formKey,
            child: Column(
              children: [
                EmailTextField(emailController: emailController),
                verticalSpace(18),
                PasswordTextField(passwordController: passwordController),
              ],
            ),
          ),
          verticalSpace(40),
          AppTextButton(
            buttonWidth: 270.w,
            buttonHeight: 42.h,
            buttonText: "Login",
            onPressed: () {
              if (context.read<LoginCubit>().formKey.currentState!.validate()) {
                context.read<LoginCubit>().emitLoginStates();
              }
            },
          ),
          verticalSpace(15),
          const ForgotPassword(),
          verticalSpace(40),
          const ToggleToSignUp(),
          const LoginBlocListener(),
          verticalSpace(20),
        ],
      ),
    );
  }
}

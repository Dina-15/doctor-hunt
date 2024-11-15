import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/helpers/app_regex.dart';
import 'package:doctor_hunt/core/widgets/text_form_field.dart';

class LoginEmailTextField extends StatelessWidget {
  const LoginEmailTextField({super.key, required this.emailController});
  final TextEditingController emailController;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Email',
      controller: emailController,
      validator: (value) {
        if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
          return "Please enter a valid email";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
      fillColor: Colors.white,
    );
  }
}
import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/helpers/app_regex.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/widgets/text_form_field.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField({super.key, required this.emailController});
  final TextEditingController emailController;
  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {

  bool isValid = false;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Email',
      controller: widget.emailController,
      validator: (value) {
        if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
          setState(() {
            isValid = false;
          });
          return "Please enter a valid email";
        } else {
          setState(() {
            isValid = true;
          });
          return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
      fillColor: Colors.white,
      radius: 12,
      suffixIcon: const Icon(
        Icons.check,
        size: 23,
      ),
      suffixIconColor: isValid
          ? AppColors.primaryColor
          : AppColors.lightGrey,
    );
  }
}
import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/helpers/app_regex.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:doctor_hunt/core/widgets/text_form_field.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField({super.key});

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  final TextEditingController _emailController = TextEditingController();
  bool isValid = false;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Email',
      controller: _emailController,
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
      hintStyle: AppStyles.font16LightGrayRegular,
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
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_hunt/core/widgets/text_form_field.dart';

class SignUpPasswordTextField extends StatefulWidget {
  const SignUpPasswordTextField({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  State<SignUpPasswordTextField> createState() => _PassTextFieldState();
}

class _PassTextFieldState extends State<SignUpPasswordTextField> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: 'Password',
          controller: widget.passwordController,
          validator: (value) {
            if (value == null ||
                value.isEmpty) {
              return "Please, enter a valid password";
            }
          },
          keyboardType: TextInputType.visiblePassword,
          fillColor: Colors.white,
          isObscureText: isObscureText,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            icon: Icon(
              isObscureText ? Icons.visibility_off : Icons.visibility,
              size: 23.r,
            ),
          ),
        ),
      ],
    );
  }
}
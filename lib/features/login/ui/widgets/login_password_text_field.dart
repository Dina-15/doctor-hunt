import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_hunt/core/widgets/text_form_field.dart';

class LoginPasswordTextField extends StatefulWidget {
  const LoginPasswordTextField({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  State<LoginPasswordTextField> createState() => _PassTextFieldState();
}

class _PassTextFieldState extends State<LoginPasswordTextField> {
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
import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/widgets/text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmPasswordTextField extends StatefulWidget {
   ConfirmPasswordTextField({super.key, required this.confirmPasswordController});
  TextEditingController confirmPasswordController;

  @override
  State<ConfirmPasswordTextField> createState() => _ConfirmPasswordTextFieldState();
}

class _ConfirmPasswordTextFieldState extends State<ConfirmPasswordTextField> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Confirm Password',
      controller: widget.confirmPasswordController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "password must be confirmed!";
        } else {
          return null;
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
    );
  }
}

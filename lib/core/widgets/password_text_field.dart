import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_hunt/core/helpers/app_regex.dart';
import 'package:doctor_hunt/features/login/ui/widgets/password_validations.dart';
import 'package:doctor_hunt/core/widgets/text_form_field.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PassTextFieldState();
}

class _PassTextFieldState extends State<PasswordTextField> {
  final TextEditingController _passwordController = TextEditingController();
  bool isObscureText = true;
  bool isActivated = false;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    setPasswordControllerListener();
  }

  setPasswordControllerListener() {
    _passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(_passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(_passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(_passwordController.text);
        hasNumber = AppRegex.hasNumber(_passwordController.text);
        hasMinLength = AppRegex.hasMinLength(_passwordController.text);
      });
    });
  }
  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: 'Password',
          controller: _passwordController,
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isPasswordValid(value)) {
              return "Please, enter a valid password";
            }
          },
          onTap: () {
            isActivated = true;
          },
          keyboardType: TextInputType.visiblePassword,
          fillColor: Colors.white,
          radius: 12,
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
        if (isActivated)
          PasswordValidations(
              hasLowerCase: hasLowercase,
              hasUpperCase: hasUppercase,
              hasSpecialCharacters: hasSpecialCharacters,
              hasNumber: hasNumber,
              hasMinLength: hasMinLength)
      ],
    );
  }
}
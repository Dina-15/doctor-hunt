import 'package:doctor_hunt/core/helpers/app_regex.dart';
import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/widgets/text_form_field.dart';

import 'package:doctor_hunt/core/theming/colors.dart';

class NameTextField extends StatefulWidget {
  const NameTextField({super.key});

  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
  final TextEditingController _nameController = TextEditingController();
  bool isValid = false;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Name',
      controller: _nameController,
      validator: (value) {
        if (value == null || value.isEmpty || !AppRegex.isNameValid(value)) {
          setState(() {
            isValid = false;
          });
          return "Please enter a valid name!";
        } else {
          setState(() {
            isValid = true;
          });
          return null;
        }
      },
      keyboardType: TextInputType.name,
      fillColor: Colors.white,
      radius: 12,
      suffixIcon: const Icon(
        Icons.check,
        size: 23,
      ),
      suffixIconColor: isValid ? AppColors.primaryColor : AppColors.lightGrey,
    );
  }
}

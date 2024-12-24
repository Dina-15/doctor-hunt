import 'package:doctor_hunt/core/helpers/app_regex.dart';
import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/widgets/text_form_field.dart';

class NameTextField extends StatelessWidget {
  NameTextField({super.key, required this.nameController});
  TextEditingController nameController;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Name',
      controller: nameController,
      validator: (value) {
        if (value == null || value.isEmpty || !AppRegex.isNameValid(value)) {
          return "Please enter a valid name!";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.name,
      fillColor: Colors.white,
    );
  }
}

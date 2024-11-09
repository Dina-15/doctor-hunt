import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/widgets/text_form_field.dart';

class GenderTextField extends StatelessWidget {
   GenderTextField({super.key, required this.genderController});
  TextEditingController genderController;
  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Gender',
      controller: genderController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter a valid gender!";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.number,
      fillColor: Colors.white,
    );
  }
}

import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/widgets/text_form_field.dart';

class PhoneTextField extends StatelessWidget {
  PhoneTextField({super.key, required this.phoneController});
  TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hintText: 'Phone',
      controller: phoneController,
      validator: (value) {
        if (value == null || value.isEmpty ) {
          return "Please enter a valid phone number!";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.phone,
      fillColor: Colors.white,
    );
  }
}

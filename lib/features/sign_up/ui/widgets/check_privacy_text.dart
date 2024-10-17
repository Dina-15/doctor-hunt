import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_hunt/core/theming/styles.dart';


class CheckPrivacyText extends StatefulWidget {
  const CheckPrivacyText({super.key});

  @override
  State<CheckPrivacyText> createState() => _CheckPrivacyTextState();
}

class _CheckPrivacyTextState extends State<CheckPrivacyText> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: _isChecked, onChanged: (newValue) {
          setState(() {
            _isChecked = newValue!;
          });
        },),
        Text("I agree with the Terms of Privacy Policy",
          style: AppStyles.font14GrayRegular.copyWith(fontSize: 12.sp),
        ),
      ],
    );
  }
}
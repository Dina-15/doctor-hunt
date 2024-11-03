import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Hi Handwerker!",
          style: AppStyles.getRegularStyle(
              color: Colors.white,
              fontSize: 20),
        ),
        verticalSpace(6),
        Text(
          "Find Your Doctor",
          style: AppStyles.getBoldStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

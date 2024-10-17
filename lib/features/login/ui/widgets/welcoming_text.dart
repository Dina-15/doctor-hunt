import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/theming/styles.dart';

class WelcomingText extends StatelessWidget {
  const WelcomingText({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text(title, style: AppStyles.font28DarkBlackBold),
          verticalSpace(10),
          Text(subtitle, style: AppStyles.font14GrayRegular,textAlign: TextAlign.center,)
        ],
    );
  }
}

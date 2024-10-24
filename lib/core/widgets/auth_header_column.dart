import 'package:flutter/material.dart';

import '../theming/styles.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';

class AuthHeaderColumn extends StatelessWidget {
  const AuthHeaderColumn(
      {super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppStyles.getBlackBoldStyle(fontSize: 24),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        verticalSpace(10),
        Text(
          subtitle,
          style: AppStyles.getRegularStyle(color: AppColors.secondaryColor),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}

import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CardHeaderRow extends StatelessWidget {
  const CardHeaderRow({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.getSemiBoldStyle(color: AppColors.boldTextColor),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            "See all    ",
            style: AppStyles.getSemiRegularStyle(fontSize: 12),
          ),
        ),
      ],
    );
  }
}

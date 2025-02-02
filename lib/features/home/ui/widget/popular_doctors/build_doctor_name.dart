import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';

class BuildDoctorName extends StatelessWidget {
   const BuildDoctorName({super.key, required this.name});

  final String? name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name ?? "Unknown Doctor",
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: AppStyles.getSemiBoldStyle(color: AppColors.boldTextColor),
    );
  }
}

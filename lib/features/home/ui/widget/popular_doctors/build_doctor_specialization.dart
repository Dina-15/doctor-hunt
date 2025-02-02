import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';

class BuildDoctorSpecialization extends StatelessWidget {
  const BuildDoctorSpecialization({super.key, this.name, this.degree});

  final String? name;
  final String? degree;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      "${name?? "Specialization not available"} ${degree ?? "Doctor"}",
      style: AppStyles.getRegularStyle(color: AppColors.secondaryColor),
    );
  }
}

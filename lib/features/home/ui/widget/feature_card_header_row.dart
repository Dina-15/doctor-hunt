import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureCardHeaderRow extends StatelessWidget {
  const FeatureCardHeaderRow({super.key, required this.doctorRate});

  final double doctorRate;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_border,
            size: 20,
            color: Colors.grey,
          ),
        ),
        horizontalSpace(10),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20.r,
        ),
        Text(
          '$doctorRate  ',
          style: AppStyles.getSemiBoldStyle(
              fontSize: 10, color: Colors.black),
        )
      ],
    );
  }
}

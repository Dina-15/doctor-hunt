import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularDoctorImages extends StatelessWidget {
  const PopularDoctorImages({super.key, required this.cardDataImage});

  final String cardDataImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12.r),
        topRight: Radius.circular(12.r),
      ),
      child: Image.asset(
        cardDataImage,
        height: 180.h,
        width: 190.w,
        fit: BoxFit.cover,
      ),
    );
  }
}

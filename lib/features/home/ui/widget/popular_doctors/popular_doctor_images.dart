import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularDoctorImages extends StatelessWidget {
  const PopularDoctorImages({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12.r),
        topRight: Radius.circular(12.r),
      ),
      child: SvgPicture.asset(
        AppAssets.generalDoctor,
        height: 140.h,
        width: 190.w,
        fit: BoxFit.contain,
      ),
    );
  }
}

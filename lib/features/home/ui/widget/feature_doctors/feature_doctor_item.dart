import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:doctor_hunt/features/home/data/models/doctors_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'feature_card_header_row.dart';

class FeatureDoctorItem extends StatelessWidget {
  const FeatureDoctorItem({super.key, required this.doctorData});

  final DoctorsData? doctorData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: EdgeInsets.only(left: 3.w, right: 12.w, top: 20.h, bottom: 15.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(5, 0),
                color: AppColors.lightGrey,
                blurRadius: 10.r,
                spreadRadius: 2.r)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const FeatureCardHeaderRow(doctorRate: 4),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: AppColors.lightGrey,
              child: SvgPicture.asset(
                AppAssets.generalDoctor,
                height: 47.h,
                width: 47.w,
              ),
            ),
          ),
          verticalSpace(8),
          Padding(
            padding: EdgeInsets.only(left: 3.w),
            child: Text(
              doctorData?.name ??"Doctor",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: AppStyles.getSemiBoldStyle(
                  fontSize: 12, color: AppColors.boldTextColor),
            ),
          ),
          Text(
            "\$${doctorData?.price ??""}.00/hours",
            style: AppStyles.getSemiBoldStyle(
                fontSize: 9, color: AppColors.secondaryColor),
          ),
        ],
      ),
    );
  }
}
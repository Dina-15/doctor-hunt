import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:doctor_hunt/features/home/data/models/doctor_model.dart';
import 'package:doctor_hunt/features/home/data/repo/doctor_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'rate_drawer.dart';

class PopularDoctorCard extends StatelessWidget {
  const PopularDoctorCard({super.key, required this.cardData});

  final DoctorModel cardData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      margin: EdgeInsets.only(left: 3.w,right: 15.w, top: 20.h, bottom: 20.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(5,0),
                color: AppColors.lightGrey, blurRadius: 10.r, spreadRadius: 2.r)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12.r),
            topRight: Radius.circular(12.r),),
            child: Image.asset(
              cardData.image,
              height: 180.h,
              width: 190.w,
              fit: BoxFit.cover,
            ),
          ),
          verticalSpace(8),
          Text(cardData.name, style: AppStyles.getSemiBoldStyle(color: AppColors.boldTextColor),),
          Text(cardData.jobTitle!, style: AppStyles.getRegularStyle(color: AppColors.secondaryColor),),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  5, (index) => RateDrawer(index: index,doctorModel: cardData)))
        ],
      ),
    );
  }
}
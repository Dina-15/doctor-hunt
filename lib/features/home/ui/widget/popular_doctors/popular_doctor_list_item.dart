import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:doctor_hunt/features/home/data/models/doctors_response_model.dart';
import 'package:doctor_hunt/core/widgets/rate_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'popular_doctor_images.dart';

class PopularDoctorListItem extends StatelessWidget {
  const PopularDoctorListItem({super.key, required this.doctorData});

  final DoctorsData? doctorData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      margin: EdgeInsets.only(left: 3.w, right: 15.w, top: 20.h, bottom: 20.h),
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
      child: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(3),
            const PopularDoctorImages(),
            verticalSpace(3),
            Text(
              "${doctorData?.name}",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: AppStyles.getSemiBoldStyle(color: AppColors.boldTextColor),
            ),
            Text(
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              "${doctorData?.specialization?.name} ${doctorData?.degree}",
              style: AppStyles.getRegularStyle(color: AppColors.secondaryColor),
            ),
            const RateDrawer(
              doctorRate: 4,
            )
          ],
        ),
      ),
    );
  }
}

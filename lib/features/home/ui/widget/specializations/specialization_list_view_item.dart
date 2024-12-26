import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../data/models/specialization_response_model.dart';

class SpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  const SpecialityListViewItem({
    super.key,
    required this.specializationsData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.w, right: 10.w),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.primaryColor,
              ),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: 45.r,
              backgroundColor: AppColors.lightGrey,
              child: SvgPicture.asset(
                AppAssets.generalDoctor,
                height: 50.h,
                width: 50.w,
                //! Consider adding error widget
              ),
            ),
          ),
          verticalSpace(5),
          Text(
            specializationsData?.name ??
                "Unknown Specialization", //! Default value for safety
            style: AppStyles.getRegularStyle(color: AppColors.secondaryColor),
          ),
        ],
      ),
    );
  }
}

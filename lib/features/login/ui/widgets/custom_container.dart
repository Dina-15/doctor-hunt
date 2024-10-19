import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:doctor_hunt/core/widgets/custom_svg_image.dart';

class CustomContainer extends StatelessWidget {
  //! Need to be more meaningful name 
  const CustomContainer({super.key, required this.text, required this.image});
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [BoxShadow(color: AppColors.lightGrey,
          blurRadius: 8.r,
          blurStyle: BlurStyle.outer,
        )]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomSVGImage(asset: image, width: 18.w, height: 18.h,),
          horizontalSpace(10),
          Text(text, style: AppStyles.font16LightGrayRegular),
        ],
      ),
    );
  }
}

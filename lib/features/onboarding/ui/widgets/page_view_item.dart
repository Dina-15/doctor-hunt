import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_hunt/core/helpers/spacing.dart';
import '../../data/models/page_model.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.myPage});

  final PageModel myPage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: <Widget>[
          verticalSpace(50),
          Image.asset(myPage.picture),
          verticalSpace(50),
          Text(
            myPage.title,
            style: AppStyles.getBoldStyle(fontSize: 28.sp),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          verticalSpace(10),
          Text(
            myPage.subTitle,
            style: AppStyles.getRegularStyle(color: AppColors.secondaryColor),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}

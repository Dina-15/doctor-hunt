import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../data/models/page_model.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.myPage});

  final PageModel myPage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Stack(
        children: [Column(
          children: <Widget>[
            verticalSpace(60),
            Image.asset(myPage.picture),
            verticalSpace(60),
            Text(
              myPage.title,
              style: AppStyles.font28LightBlackBold,
            ),
            verticalSpace(10),
            Text(
              myPage.subTitle,
              style: AppStyles.font14GrayRegular,
              textAlign: TextAlign.center,
            ),
          ],
        ),]
      ),
    );
  }
}

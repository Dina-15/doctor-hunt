import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../data/models/page_model.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.myPage});

  final PageModel myPage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [Column(
          children: <Widget>[
            verticalSpace(60),
            Image.asset(myPage.picture),
            verticalSpace(60),
            Text(
              myPage.title,
              style: TextStyles.font28LightBlackBold,
            ),
            verticalSpace(10),
            Text(
              myPage.subTitle,
              style: TextStyles.font14GrayRegular,
              textAlign: TextAlign.center,
            ),
            // verticalSpace(0),
          ],
        ),]
      ),
    );
  }
}

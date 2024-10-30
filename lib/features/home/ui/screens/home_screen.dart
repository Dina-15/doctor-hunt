import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:doctor_hunt/features/home/ui/widget/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //! TODO: Refactor this screen further.
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        titleSpacing: 20.w,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Hi Handwerker!",
              style: AppStyles.getRegularStyle(
                  //! TODO: Do not add spacing (sp) as it is already handled in the app styles class.
                  color: Colors.white,
                  fontSize: 20.sp),
            ),
            verticalSpace(6),
            Text(
              "Find Your Doctor",
              style: AppStyles.getBoldStyle(
                  //! TODO: Do not add FontWeight as it is already handled in the app styles class.
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 33.r,
            child: Icon(
              Icons.person,
              size: 45.r,
            ),
          ),
          horizontalSpace(20),
        ],
        toolbarHeight: 140.h,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              )),
        ),
      ),
      body: const HomeBody(),
    );
  }
}

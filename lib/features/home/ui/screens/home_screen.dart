import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/features/home/ui/widget/app_bar_title.dart';
import 'package:doctor_hunt/features/home/ui/widget/home_body.dart';
import 'package:doctor_hunt/features/login/data/models/login_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.userData,});
  final LoginResponse? userData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        titleSpacing: 20.w,
        title: AppBarTitle(userName: userData?.userData?.userName),
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
        toolbarHeight: 120.h,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
          ),
        ),
      ),
      body: const HomeBody(),
    );
  }
}
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecializationShimmerLoading extends StatelessWidget {
  const SpecializationShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 3.w, right: 5.w),
            child: Column(
              children: [
                Shimmer.fromColors(
                  baseColor: AppColors.lightGrey,
                  highlightColor: Colors.white,
                  child: const CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                  ),
                ),
                verticalSpace(5),
                Shimmer.fromColors(
                  baseColor: AppColors.lightGrey,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 14.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecializationShimmerLoading extends StatelessWidget {
  //! TODO: Refactor this class
  const SpecializationShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemCount = 10;
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return _buildShimmerItem();
        },
      ),
    );
  }

  Widget _buildShimmerItem() {
    return Padding(
      padding: EdgeInsets.only(left: 3.w, right: 5.w),
      child: Column(
        children: [
          _buildShimmerAvatar(),
          verticalSpace(5),
          _buildShimmerText(),
        ],
      ),
    );
  }

  Widget _buildShimmerAvatar() {
    return Shimmer.fromColors(
      baseColor: AppColors.lightGrey,
      highlightColor: Colors.white,
      child: CircleAvatar(
        radius: _avatarRadius.r,
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _buildShimmerText() {
    return Shimmer.fromColors(
      baseColor: AppColors.lightGrey,
      highlightColor: Colors.white,
      child: Container(
        height: 14.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
    );
  }

  static const double _avatarRadius = 45;
}

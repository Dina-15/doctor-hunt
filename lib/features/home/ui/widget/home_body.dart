import 'package:doctor_hunt/core/constants/app_strings.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/features/home/ui/widget/specializations/specialization_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cards_title_row.dart';
import 'feature_doctors/feature_doctors_bloc_builder.dart';
import 'popular_doctors/popular_doctors_bloc_builder.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.w, top: 20.h),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SpecializationsBlocBuilder()),
          const SliverToBoxAdapter(
              child: CardHeaderRow(title: AppStrings.homeDoctorList1)),
          const SliverToBoxAdapter(
            child: PopularDoctorsBlocBuilder(),
          ),
          const SliverToBoxAdapter(
              child: CardHeaderRow(title: AppStrings.homeDoctorList2)),
          const SliverToBoxAdapter(child: FeatureDoctorsBlocBuilder()),
          SliverToBoxAdapter(
              child: verticalSpace(
            50,
          ))
        ],
      ),
    );
  }
}

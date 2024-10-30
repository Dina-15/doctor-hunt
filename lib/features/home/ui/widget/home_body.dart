import 'package:doctor_hunt/features/home/ui/widget/popular_doctor_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'card_header_row.dart';
import 'category_list_view.dart';
import 'feature_doctor_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.w, top: 20.h),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoryListView()),
          const SliverToBoxAdapter(
            child: CardHeaderRow(title: "Popular Doctor")
          ),
          SliverToBoxAdapter(
            child: PopularDoctorListView(),
          ),
         const SliverToBoxAdapter(
            child: CardHeaderRow(title: "Feature Doctor")
          ),
          SliverToBoxAdapter(child: FeatureDoctorListView()),
        ],
      ),
    );
  }
}

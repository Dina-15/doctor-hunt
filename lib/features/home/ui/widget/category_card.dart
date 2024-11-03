import 'package:doctor_hunt/core/widgets/custom_svg_image.dart';
import 'package:doctor_hunt/features/home/data/models/category_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.cardData});

  final CategoryCardModel cardData;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.w,
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 15.w, bottom: 18.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          gradient: LinearGradient(colors: [
            cardData.cardColor,
            cardData.cardColor.withOpacity(0.8),
            cardData.cardColor.withOpacity(0.5),
          ])),
      child: CustomSVGImage(
        asset: cardData.categoryIcon,
        width: 30,
        height: 30,
      ),
    );
  }
}

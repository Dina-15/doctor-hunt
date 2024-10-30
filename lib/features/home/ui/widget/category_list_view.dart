import 'package:doctor_hunt/features/home/ui/widget/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/category_card_model.dart';
import '../../data/repo/category_card_data.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});

  final List<CategoryCardModel> cardsList = CategoryCardData.categoryDataList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardsList.length,
        itemBuilder: (context, index) => CategoryCard(cardData: cardsList[index]),
      ),
    );
  }
}

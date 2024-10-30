import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/features/home/data/models/category_card_model.dart';
import 'package:flutter/material.dart';

abstract class CategoryCardData {
  static List<CategoryCardModel> categoryDataList = [
    CategoryCardModel(categoryIcon: AppAssets.toothIcon, cardColor: Colors.blue),
    CategoryCardModel(categoryIcon: AppAssets.heartIcon, cardColor: AppColors.primaryColor),
    CategoryCardModel(categoryIcon: AppAssets.eyeIcon, cardColor: Colors.orange),
    CategoryCardModel(categoryIcon: AppAssets.bodyIcon, cardColor: Colors.red),
  ];
}
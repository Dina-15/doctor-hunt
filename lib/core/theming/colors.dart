import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static final AppColors _instance = AppColors._();
  factory AppColors() => _instance;
  static const Color primaryColor = const Color(0xFF0EBE7F);
  static Color boldTextColor = const Color(0xFF333333);
  static Color secondaryColor = const Color(0xFF677294);
  static Color lightGrey = Colors.grey[300]!;
}
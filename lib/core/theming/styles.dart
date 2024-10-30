import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class AppStyles {
  AppStyles._();

  static final AppStyles _instance = AppStyles._();

  factory AppStyles() => _instance;

  static TextStyle getRegularStyle({
    double fontSize = 14,
    Color? color = AppColors.primaryColor,
    FontWeight? fontWeight = FontWeight.w400,
    String fontFamily = "Rubik",
    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    double? decorationThickness,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationThickness: decorationThickness,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );
  static TextStyle getSemiRegularStyle({
    double fontSize = 16,
    Color? color = AppColors.secondaryColor,
    FontWeight? fontWeight = FontWeight.w300,
    String fontFamily = "Rubik",
    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );

  static TextStyle getSemiBoldStyle({
    double fontSize = 18,
    Color? color = AppColors.primaryColor,
    FontWeight? fontWeight = FontWeight.w500,
    String fontFamily = "Rubik",
    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );
  static TextStyle getBoldStyle({
    double fontSize = 24,
    Color? color = AppColors.boldTextColor,
    FontWeight? fontWeight = FontWeight.w600,
    String fontFamily = "Rubik",
    double? letterSpacing,
    FontStyle? fontStyle,
    double? height,
    double? wordSpacing,
    TextDecoration? decoration,
    TextDecorationStyle? decorationStyle,
    TextBaseline? textBaseline,
    Color? decorationColor,
    Color? backgroundColor,
  }) =>
      TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontStyle: fontStyle,
        height: height,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationStyle: decorationStyle,
        textBaseline: textBaseline,
        decorationColor: decorationColor,
        backgroundColor: backgroundColor,
      );
}
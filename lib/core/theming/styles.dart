import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'font_weight.dart';
//! Will change this code later
class AppStyles {
  static TextStyle font24DarkBlackBold = TextStyle(
    fontSize: 24.sp,
    fontFamily: "Rubik",
    fontWeight: FontWeightManager.bold,
    color: Colors.black,
  );
  static TextStyle font28LightBlackBold = TextStyle(
    fontSize: 28.sp,
    fontFamily: "Rubik",
    fontWeight: FontWeightManager.bold,
    color: AppColors.boldTextColor,
  );
  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontFamily: "Rubik",
    fontWeight: FontWeightManager.regular,
    color: AppColors.secondaryColor,
  );
  static TextStyle font16LightGrayRegular = TextStyle(
    fontSize: 16.sp,
    fontFamily: "Rubik",
    fontWeight: FontWeightManager.regular,
    color: AppColors.secondaryColor,
  );
  static TextStyle font18WhiteRegular = TextStyle(
    fontSize: 18.sp,
    fontFamily: "Rubik",
    fontWeight: FontWeightManager.medium,
    color: Colors.white,
  );
}
// class AppStyles {
//   AppStyles._();

//   static final AppStyles _instance = AppStyles._();

//   factory AppStyles() => _instance;

//   static TextStyle getRegularStyle({
//     double fontSize = 14,
//     Color? color = AppColors.primaryColor,
//     FontWeight? fontWeight = FontWeight.w400,
//     // String fontFamily = FontFamilies.interFamily,
//     double? letterSpacing,
//     FontStyle? fontStyle,
//     double? height,
//     double? wordSpacing,
//     TextDecoration? decoration,
//     TextDecorationStyle? decorationStyle,
//     TextBaseline? textBaseline,
//     Color? decorationColor,
//     Color? backgroundColor,
//   }) =>
//       TextStyle(
//         fontSize: fontSize,
//         fontWeight: fontWeight,
//         // fontFamily: fontFamily,
//         color: color,
//         letterSpacing: letterSpacing,
//         fontStyle: fontStyle,
//         height: height,
//         wordSpacing: wordSpacing,
//         decoration: decoration,
//         decorationStyle: decorationStyle,
//         textBaseline: textBaseline,
//         decorationColor: decorationColor,
//         backgroundColor: backgroundColor,
//       );

//   static TextStyle getBoldStyle({
//     double fontSize = 16,
//     Color? color = AppColors.primaryColor,
//     FontWeight? fontWeight = FontWeight.w700,
//     // String fontFamily = FontFamilies.interFamily,
//     double? letterSpacing,
//     FontStyle? fontStyle,
//     double? height,
//     double? wordSpacing,
//     TextDecoration? decoration,
//     TextDecorationStyle? decorationStyle,
//     TextBaseline? textBaseline,
//     Color? decorationColor,
//     Color? backgroundColor,
//   }) =>
//       TextStyle(
//         fontSize: fontSize,
//         fontWeight: fontWeight,
//         // fontFamily: fontFamily,
//         color: color,
//         letterSpacing: letterSpacing,
//         fontStyle: fontStyle,
//         height: height,
//         wordSpacing: wordSpacing,
//         decoration: decoration,
//         decorationStyle: decorationStyle,
//         textBaseline: textBaseline,
//         decorationColor: decorationColor,
//         backgroundColor: backgroundColor,
//       );

//   static TextStyle getSemiBoldStyle({
//     double fontSize = 12,
//     Color? color = AppColors.primaryColor,
//     FontWeight? fontWeight = FontWeight.w600,
//     // String fontFamily = FontFamilies.interFamily,
//     double? letterSpacing,
//     FontStyle? fontStyle,
//     double? height,
//     double? wordSpacing,
//     TextDecoration? decoration,
//     TextDecorationStyle? decorationStyle,
//     TextBaseline? textBaseline,
//     Color? decorationColor,
//     Color? backgroundColor,
//   }) =>
//       TextStyle(
//         fontSize: fontSize,
//         fontWeight: fontWeight,
//         // fontFamily: fontFamily,
//         color: color,
//         letterSpacing: letterSpacing,
//         fontStyle: fontStyle,
//         height: height,
//         wordSpacing: wordSpacing,
//         decoration: decoration,
//         decorationStyle: decorationStyle,
//         textBaseline: textBaseline,
//         decorationColor: decorationColor,
//         backgroundColor: backgroundColor,
//       );
//   static TextStyle getMediumStyle({
//     double fontSize = 13,
//     Color? color = AppColors.primaryColor,
//     FontWeight? fontWeight = FontWeight.w500,
//     // String fontFamily = FontFamilies.interFamily,
//     double? letterSpacing,
//     FontStyle? fontStyle,
//     double? height,
//     double? wordSpacing,
//     TextDecoration? decoration,
//     TextDecorationStyle? decorationStyle,
//     TextBaseline? textBaseline,
//     Color? decorationColor,
//     Color? backgroundColor,
//   }) =>
//       TextStyle(
//         fontSize: fontSize,
//         fontWeight: fontWeight,
//         // fontFamily: fontFamily,
//         color: color,
//         letterSpacing: letterSpacing,
//         fontStyle: fontStyle,
//         height: height,
//         wordSpacing: wordSpacing,
//         decoration: decoration,
//         decorationStyle: decorationStyle,
//         textBaseline: textBaseline,
//         decorationColor: decorationColor,
//         backgroundColor: backgroundColor,
//       );
// }

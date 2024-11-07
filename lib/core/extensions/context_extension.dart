import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void showSnackBar(String message,
      {String? actionLabel, VoidCallback? callback}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message, style: AppStyles.getRegularStyle(color: Colors.black),),
      backgroundColor: AppColors.primaryColor,
      action: SnackBarAction(
        onPressed: () => callback?.call(),
        label: actionLabel ?? '',
      ),
    ));
  }
}

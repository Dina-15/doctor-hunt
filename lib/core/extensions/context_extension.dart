import 'package:doctor_hunt/core/theming/colors.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum ToastStates {SUCCESS, ERROR, WARNING}
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

  void showToast({required String text, required ToastStates state}){
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: chooseStateColor(state),
        textColor: Colors.white,
        fontSize: 16.0.sp
    );
  }
}

Color chooseStateColor(ToastStates state)
{
  Color color;
  switch(state)
      {
    case ToastStates.SUCCESS:
      color = Colors.green;
    case ToastStates.ERROR:
      color = Colors.red;
    case ToastStates.WARNING:
      color = Colors.amber;
  }
  return color;
}

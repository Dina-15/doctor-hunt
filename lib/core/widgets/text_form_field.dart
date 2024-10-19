

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  // Padding inside the text field.
  final InputBorder? focusedBorder;
  //  Border style when the text field is focused.
  final TextStyle? inputStyle;
  // Text style for the input text.
  final TextStyle? hintStyle;
  // Text style for the hint text.
  final bool? isObscureText;
  // Whether the text field should obscure the text (useful for passwords).
  final String hintText;
  // Text style for the hint text.
  //  The hint text displayed when the text field is empty.
  final Widget? suffixIcon;
  // An optional widget to display at the end of the text field.
  final Color? suffixIconColor;
  final Widget? prefixIcon;
  final Color? fillColor;
  // Background color of the text field.
  final TextEditingController? controller;
  // final Function(String?) validator;
  final Function(String?)? validator;
  final Function(String?)? onChanged;
  final VoidCallback? onTap;
  final Color? enabledBorderSideColor;
  final Color? focusedBorderColor;
  final int? radius;
  final String? labelText;
  final TextStyle? labelStyle;
  final Color? cursorColor;
  final TextInputType keyboardType;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.inputStyle,
    this.hintStyle,
    this.isObscureText,
    required this.hintText,
    this.suffixIcon,
    this.suffixIconColor,
    this.prefixIcon,
    this.fillColor,
    this.controller,
    this.radius,
    this.enabledBorderSideColor,
    this.labelText,
    this.labelStyle,
    this.onChanged,
    this.onTap,
    this.validator,
    this.focusedBorderColor,
    this.cursorColor,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
      return validator!(value);
      // validator is a function that checks if the text input is valid and
      // returns an error message if it isn't.
      },
      onChanged: onChanged,
      onTap: onTap,
      enabled: true,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: labelStyle,
        // The InputDecoration object customizes the appearance of the TextFormField
        isDense: true,
        // isDense: true: Reduces the height of the text field.
        contentPadding: contentPadding ??
            // contentPadding: Uses the provided contentPadding or defaults to
            // horizontal and vertical padding values.
            EdgeInsets.symmetric(
              horizontal: 23.0.w,
              vertical: 16.0.h,
            ),
        focusedBorder: focusedBorder ??
            // focusedBorder: Uses the provided focusedBorder or defaults to an
            //OutlineInputBorder with a specific color and width.
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                radius?.r?? 12.r,
              ),
              borderSide: BorderSide(
                color: focusedBorderColor ?? AppColors.primaryColor,
                width: 1.5.w,
              ),
            ),
        enabledBorder: OutlineInputBorder(
          // enabledBorder: Defines the border when the text field is not focused,
          // using a lighter gray color.
          borderRadius: BorderRadius.circular(
            radius?.r ?? 12.r,
          ),
          borderSide: BorderSide(
            color: enabledBorderSideColor ?? AppColors.lightGrey,
            width: 1.5.w,
          ),
        ),
        hintStyle: hintStyle ?? AppStyles.font14GrayRegular,
        // hintStyle: Uses the provided hintStyle or defaults to a predefined text style.
        hintText: hintText,
        // hintText: Displays the provided hint text.
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor,
        prefixIcon: prefixIcon,
        prefixIconColor: AppColors.secondaryColor,
        // suffixIcon: Displays the provided suffix icon, if any.

        fillColor: fillColor ?? AppColors.lightGrey,
        // fillColor: Uses the provided fillColor or defaults to a light gray color.
        filled: true,
        // filled: true: Ensures the text field is filled with the background color.
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            radius?.r?? 12.r,
          ),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5.w,
          ),
        ),
        // errorBorder set the border styles when there is a validation error.
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            radius?.r?? 12.r,
          ),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5.w,
          ),
        ),
        // focusedErrorBorder set the border styles when there is a validation
        // error.
      ),
      cursorColor: cursorColor ?? AppColors.primaryColor,
      // cursorColor: Sets the color of the cursor to the primary blue color.
      obscureText: isObscureText ?? false,
      // obscureText: Uses the provided isObscureText value or defaults to false.
      style: inputStyle ?? AppStyles.font14GrayRegular,
      // style: Uses the provided inputStyle or defaults to a predefined text style.
    );
  }
}
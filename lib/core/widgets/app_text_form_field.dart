import 'package:doctors_app/core/theming/colors.dart';
import 'package:doctors_app/core/theming/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintTextStyle;
  final TextStyle? inputTextStyle;
  final String hintText;
  final bool? isObscure;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.hintTextStyle,
    this.inputTextStyle,
    required this.hintText,
    this.isObscure,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator, this.errorBorder, this.focusedErrorBorder,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) { 
        return validator(value);
      },
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: backgroundColor ?? ColorManager.moreLightGray,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorManager.mainBlue, width: 1.3),
              borderRadius: BorderRadius.circular(16.r),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.lighterGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
            errorBorder: errorBorder ?? OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.3,
              )
            ),
            focusedErrorBorder: focusedErrorBorder ?? OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.3,
              )
            ),
        hintStyle: hintTextStyle ?? TextStyles.font14lightGrayRegular,
        hintText: hintText,

        suffixIcon: suffixIcon,
      ),
      obscureText: isObscure ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
    );
  }
}

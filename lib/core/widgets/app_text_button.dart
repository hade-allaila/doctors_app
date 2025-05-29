import 'package:doctors_app/core/theming/colors.dart';
import 'package:doctors_app/core/theming/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  double? width;
  double? height;
  double? horizontalPadding;
  double? verticalPadding;
  TextStyle? textStyle;
  Color? backgroundColor;
  VoidCallback onPressed;
  String text;
  AppTextButton({
    super.key,
    required this.onPressed,
    this.width,
    this.height,
    this.horizontalPadding,
    this.verticalPadding,
    this.backgroundColor,
    this.textStyle,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(
          backgroundColor ?? ColorManager.mainBlue,
        ),
        minimumSize: WidgetStatePropertyAll<Size>(
          Size(width?.w ?? double.infinity, height?.h ?? 50),
        ),
        padding: WidgetStatePropertyAll<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
      ),
      child: Text(text, style:textStyle ?? TextStyles.font16WhiteSemiBold),
    );
  }
}

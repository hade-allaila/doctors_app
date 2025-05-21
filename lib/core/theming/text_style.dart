import 'package:doctors_app/core/theming/colors.dart';
import 'package:doctors_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font30BlueBold = TextStyle(
    color: ColorManager.mainBlue,
    fontWeight: FontWeightHelper.bold,
    fontSize: 32.sp,
  );

  static TextStyle font24BlueBold = TextStyle(
    color: ColorManager.mainBlue,
    fontWeight: FontWeightHelper.bold,
    fontSize: 24.sp,
  );


  static TextStyle font13BlueRegular = TextStyle(
    color: ColorManager.mainBlue,
    fontWeight: FontWeightHelper.regular,
    fontSize: 13.sp,
  );

  static TextStyle font12BlueSemiBold = TextStyle(
    color: ColorManager.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 12.sp,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    color: ColorManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
    fontSize: 14.sp,
  );

  static TextStyle font24blackBold = TextStyle(
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
    fontSize: 24.sp,
  );

  static TextStyle font12BlackMedium = TextStyle(
    color: Colors.black,
    fontWeight: FontWeightHelper.medium,
    fontSize: 12.sp,
  );

  static TextStyle font12BlackRegular = TextStyle(
    color: Colors.black,
    fontWeight: FontWeightHelper.regular,
    fontSize: 12.sp,
  );

  static TextStyle font14lightGrayRegular = TextStyle(
    color: ColorManager.lightGray,
    fontWeight: FontWeightHelper.regular,
    fontSize: 14.sp,
  );

  static TextStyle font12GreyRegular = TextStyle(
    color: ColorManager.gray,
    fontWeight: FontWeightHelper.regular,
    fontSize: 12.sp,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 16.sp,
  );
}

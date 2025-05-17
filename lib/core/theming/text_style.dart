import 'package:doctors_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24black700Weight = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontSize: 24.sp,
  );
  static TextStyle font30BlueBold = TextStyle(
    color: ColorManager.mainBlue,
    fontWeight: FontWeight.bold,
    fontSize: 32.sp,
  );

  static TextStyle font12GreyNormal = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.normal,
    fontSize: 12.sp,
  );
    static TextStyle font16White600Weight= TextStyle( 
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 16.sp,
);
}

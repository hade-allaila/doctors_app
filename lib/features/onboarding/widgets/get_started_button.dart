import 'package:doctors_app/core/helpers/extentions.dart';
import 'package:doctors_app/core/routing/routes.dart';
import 'package:doctors_app/core/theming/colors.dart';
import 'package:doctors_app/core/theming/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () { 
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(ColorManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50.h)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      child: Text("Get Started", style: TextStyles.font16White600Weight),
    );
  }
}

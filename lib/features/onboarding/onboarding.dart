import 'package:doctors_app/core/theming/text_style.dart';
import 'package:doctors_app/features/onboarding/widgets/doctor_with_logo_and_text.dart';
import 'package:doctors_app/features/onboarding/widgets/get_started_button.dart';
import 'package:doctors_app/features/onboarding/widgets/logo_with_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LogoWithName(),
            SizedBox(height: 30.h),
            DoctorWithLogoAndText(),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Text(
                    "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                    style: TextStyles.font12GreyRegular,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.h),
                  GetStartedButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

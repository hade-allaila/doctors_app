import 'package:doctors_app/core/theming/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorWithLogoAndText extends StatelessWidget {
  const DoctorWithLogoAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 40.w,
          child: SvgPicture.asset('assets/svgs/logo_with_opactiy.svg')),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Colors.white.withAlpha(20),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            stops: [
              0.14.h,
              0.7.h
            ],
            ),
          ),
          child: Image.asset('assets/images/onboarding_doctor.png', height: 500,),
        ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child:
              Text("Best Doctor\n Appointment App", style: TextStyles.font30BlueBold.copyWith(
                height: 1.5
                
              ),
              textAlign: TextAlign.center,),
          ),
      ],
    );
  }
}
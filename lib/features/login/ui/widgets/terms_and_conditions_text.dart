import 'package:doctors_app/core/theming/text_style.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "By logging, you agree to our ",
        style: TextStyles.font12GreyRegular.copyWith(height: 1.7),
        children: [
          TextSpan(
            text: " Terms & Conditions",
            style: TextStyles.font12BlackMedium,
          ),
          TextSpan(text: " and"),
          TextSpan(
            text: " PrivacyPolicy.",
            style: TextStyles.font12BlackMedium,
          ),
        ],
      ),
    );
  }
}

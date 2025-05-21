import 'package:doctors_app/core/theming/text_style.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Already have an account yet?",
        style: TextStyles.font12BlackRegular,
        children: [
          TextSpan(text: " SignUp", style: TextStyles.font12BlueSemiBold),
        ],
      ),
    );
  }
}

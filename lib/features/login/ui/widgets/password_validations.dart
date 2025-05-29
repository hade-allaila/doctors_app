import 'package:doctors_app/core/helpers/spacing.dart';
import 'package:doctors_app/core/theming/colors.dart';
import 'package:doctors_app/core/theming/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacter,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least 1 Lower Case character", hasLowerCase),
        verticalSpace(2),
        buildValidationRow("At least 1 Upper Case character", hasUpperCase),
        verticalSpace(2),
        buildValidationRow("At least 1 Number", hasNumber),
        verticalSpace(2),
        buildValidationRow("At least 8 characters", hasMinLength),
        verticalSpace(2),
        buildValidationRow(
          "At least 1 speical character ",
          hasSpecialCharacter,
        ),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: ColorManager.gray),
        horizentalSpace(6),
        Text(
          text,
          style: TextStyles.font13BlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            color: hasValidated ? ColorManager.gray : ColorManager.darkBlue,
          ),
        ),
      ],
    );
  }
}

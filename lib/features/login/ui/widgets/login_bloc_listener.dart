import 'package:doctors_app/core/helpers/extentions.dart';
import 'package:doctors_app/core/routing/routes.dart';
import 'package:doctors_app/core/theming/colors.dart';
import 'package:doctors_app/core/theming/text_style.dart';
import 'package:doctors_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctors_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (previous, current) =>
              current is Success || current is Loading || current is Error,
      listener: (context, state) {
        if (state is Loading) {
          showDialog(
            context: context,
            builder:
                (context) => const Center(
                  child: CircularProgressIndicator(
                    color: ColorManager.mainBlue,
                  ),
                ),
          );
        } else if (state is Success) {
          context.pop();
          context.pushNamed(Routes.homeScreen);
        } else if (state is Error) {
          setupErrorState(context, state.error);
        }
      },
      child: SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: Icon(Icons.error, color: Colors.red, size: 32),
          content: Text(error, style: TextStyles.font15DarkBlueMedium),
          actions: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text("Got it", style: TextStyles.font14BlueSemiBold),
            ),
          ],
        );
      },
    );
  }
}

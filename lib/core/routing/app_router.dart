import 'package:doctors_app/core/di/dependancy_injection.dart';
import 'package:doctors_app/core/routing/routes.dart';
import 'package:doctors_app/features/home/home_screen.dart';
import 'package:doctors_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctors_app/features/login/ui/screens/login.dart';
import 'package:doctors_app/features/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => Onboarding());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: Login(),
              ),
        );
        case Routes.homeScreen: 
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}

import 'package:doctors_app/core/routing/routes.dart';
import 'package:doctors_app/features/login/ui/screens/login.dart';
import 'package:doctors_app/features/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

class AppRouter { 
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => Onboarding());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => Login());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}
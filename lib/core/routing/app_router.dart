import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:doctor_hunt/features/login//ui/screens/login_screen.dart';
import 'package:doctor_hunt/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../../features/sign_up//ui/screens/sign_up_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
        case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
        case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );

      default:
        return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: Text(
            "No route defined for ${settings.name}",
          ),
        ),
      ),
    );
    }
  }
}

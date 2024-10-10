import 'package:doctor_hunt/core/routing/routes.dart';
// import 'package:doctor_hunt/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
          // builder: (_) => const OnboardingScreen(),
        );
      default:
        return null;
    }
  }
}

import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:doctor_hunt/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      default:
        return null;
    }
  }
}

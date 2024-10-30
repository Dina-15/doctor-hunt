import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/widgets/app_background_image.dart';
import '../widgets/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: AppBackgroundImage(child: OnboardingBody()),
      ),
    );
  }
}

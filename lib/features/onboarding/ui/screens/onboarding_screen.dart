import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_bg_gradient.dart';
import '../widgets/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomBgGradient(child: OnboardingBody()),
    );
  }
}

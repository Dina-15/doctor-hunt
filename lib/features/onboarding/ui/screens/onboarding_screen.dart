import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/constants/asset_images.dart';
import '../widgets/onboarding_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetImages.backGround), fit: BoxFit.cover),
        ),
        child: const OnboardingBody()
      ),
    );
  }
}
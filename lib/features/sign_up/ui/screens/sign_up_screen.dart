import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/widgets/app_background_image.dart';
import '../widgets/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: AppBackgroundImage(child: SignUpBody()),
      ),
    );
  }
}

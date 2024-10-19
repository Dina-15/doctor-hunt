import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/widgets/custom_bg_gradient.dart';
import '../widgets/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomBgGradient(child: SignUpBody()),
    );
  }
}

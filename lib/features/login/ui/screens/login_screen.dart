import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/widgets/custom_bg_gradient.dart';
import '../widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomBgGradient(child: LoginBody()),
    );
  }
}
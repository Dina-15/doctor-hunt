import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/widgets/app_background_image.dart';
import '../widgets/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: AppBackgroundImage(
          child: LoginBody(),
        ),
      ),
    );
  }
}

import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class CustomBgGradient extends StatelessWidget {
  //! need to change the name to be more meaningful
  const CustomBgGradient({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.backGround),
            fit: BoxFit.cover),
    ),
    child: child,
    );
  }
}
import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'custom_container.dart';

class AuthOptions extends StatelessWidget {
  const AuthOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: (){},
          child: CustomContainer(
            text: "Google",
            image: AppAssets.googleIcon,
          ),
        ),
        horizontalSpace(18),
        InkWell(
          onTap: (){},
          child: CustomContainer(
            text: "Facebook",
            image: AppAssets.facebookIcon,
          ),
        )
      ],
    );
  }
}

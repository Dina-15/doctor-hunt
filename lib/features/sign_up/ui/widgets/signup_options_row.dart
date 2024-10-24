import 'package:doctor_hunt/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/helpers/spacing.dart';
import '../../../../core/widgets/google&face_custom_container.dart';

class SignupOptionsRow extends StatelessWidget {
  const SignupOptionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: (){},
          child: GoogleAndFaceCustomContainer(
            text: "Google",
            image: AppAssets.googleIcon,
          ),
        ),
        horizontalSpace(18),
        InkWell(
          onTap: (){},
          child: GoogleAndFaceCustomContainer(
            text: "Facebook",
            image: AppAssets.facebookIcon,
          ),
        )
      ],
    );
  }
}

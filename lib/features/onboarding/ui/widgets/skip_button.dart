import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text("Skip", style: TextStyles.font14GrayRegular),
    );
  }
}

import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/routing/routes_export.dart';
import 'package:doctor_hunt/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatefulWidget {
  const AppBarTitle({super.key, required this.userName});

  final String? userName;
  @override
  State<AppBarTitle> createState() => _AppBarTitleState();
}

class _AppBarTitleState extends State<AppBarTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Hello, ${widget.userName?? "user"}",
          style: AppStyles.getRegularStyle(
              color: Colors.white,
              fontSize: 20),
        ),
        verticalSpace(6),
        Text(
          "Find Your Doctor",
          style: AppStyles.getBoldStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

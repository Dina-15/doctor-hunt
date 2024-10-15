import 'package:flutter/material.dart';

class CustomDgGradient extends StatelessWidget {
  const CustomDgGradient({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color(0xFF61CEFF).withOpacity(0.5),
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          Colors.transparent,
          const Color(0xFF0EBE7E).withOpacity(0.5),
        ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
        )
    ),
    child: child,
    );
  }
}

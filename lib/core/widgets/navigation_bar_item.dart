import 'package:doctor_hunt/core/widgets/custom_svg_image.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatefulWidget {
  NavigationBarItem({super.key, required this.icon, required this.barIndex, required this.iconIndex});
  int barIndex;
  int iconIndex;
  String icon;

  @override
  State<NavigationBarItem> createState() => _NavigationBarItemState();
}

class _NavigationBarItemState extends State<NavigationBarItem> {
  @override
  Widget build(BuildContext context) {
    return CustomSVGImage(
      asset: widget.icon,
      height: 18,
      width: 20,
      color: widget.barIndex == widget.iconIndex ? Colors.white : const Color(0xFF858EA9),
    );
  }
}
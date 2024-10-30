import 'package:doctor_hunt/core/widgets/custom_svg_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      height: 18.h,
      width: 20.w,
      color: widget.barIndex == widget.iconIndex ? Colors.white : const Color(0xFF858EA9),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomSVGImage extends StatelessWidget {
  const CustomSVGImage({
    super.key,
    required this.asset,
    this.matchTextDirection = true,
    this.fit = BoxFit.contain,
    this.onTap,
    this.width,
    this.height,
    this.color,
  });
  final double? width;
  final double? height;
  final Color? color;
  final String asset;
  final void Function()? onTap;
  final BoxFit fit;
  final bool matchTextDirection;

  @override
  Widget build(BuildContext context) {
    if (asset.contains("http")) {
      return SvgPicture.network(
        asset,
        fit: BoxFit.fill,
        matchTextDirection: matchTextDirection,
      );
    }
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        color:color?? Colors.white,
        width: width?.w ?? 0,
        height: height?.h ?? 0,
        asset,
        fit: fit,
        matchTextDirection: matchTextDirection,
      ),
    );
  }
}

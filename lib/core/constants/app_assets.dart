mixin PngAssets {
  static const String pngAssets = "assets/image/";
}

mixin SvgAssets {
  static const String svgAssets = "assets/svg/";
}

mixin VideoAssets {
  static const String videoAssets = "assets/videos/";
}

class AppAssets with PngAssets, SvgAssets, VideoAssets {
  // Image PNG
  static String onBoarding1 = "${PngAssets.pngAssets}onboarding1.png";
  static String onBoarding2 = "${PngAssets.pngAssets}onboarding2.png";
  static String onBoarding3 = "${PngAssets.pngAssets}onboarding3.png";
}
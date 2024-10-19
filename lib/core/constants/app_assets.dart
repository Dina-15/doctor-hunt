mixin PngAssets {
  static const String pngAssets = "assets/images/";

  var svgAssets;
}

mixin SvgAssets {
  static const String svgAssets = "assets/svg/";
}

mixin VideoAssets {
  static const String videoAssets = "assets/videos/";
}

class AppAssets with PngAssets, SvgAssets, VideoAssets {
  // Image PNG
  static String backGround = "${PngAssets.pngAssets}bg.png";
  static String onBoarding1 = "${PngAssets.pngAssets}onboarding1.png";
  static String onBoarding2 = "${PngAssets.pngAssets}onboarding2.png";
  static String onBoarding3 = "${PngAssets.pngAssets}onboarding3.png";
  static String facebookIcon = "${SvgAssets.svgAssets}facebook_svg_icon.svg";
  static String googleIcon = "${SvgAssets.svgAssets}google_svg_icon.svg";
}
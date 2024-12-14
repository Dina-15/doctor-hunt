mixin PngAssets {
  static const String pngAssets = "assets/images/";

}

mixin JpgAssets {
  static const String jpgAssets = "assets/images/";

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
  static String popularDoctor1 = "${PngAssets.pngAssets}doctors/popularDoctor1.png";
  static String popularDoctor2 = "${PngAssets.pngAssets}doctors/popularDoctor2.png";
  static String featureDoctor1 = "${PngAssets.pngAssets}doctors/featureDoctor1.png";
  static String featureDoctor2 = "${PngAssets.pngAssets}doctors/featureDoctor2.png";
  static String featureDoctor3 = "${PngAssets.pngAssets}doctors/featureDoctor3.png";
  static String featureDoctor4 = "${PngAssets.pngAssets}doctors/featureDoctor4.png";
  // Image SVG
  static String facebookIcon = "${SvgAssets.svgAssets}facebook_svg_icon.svg";
  static String googleIcon = "${SvgAssets.svgAssets}google_svg_icon.svg";
  static String homeIcon = "${SvgAssets.svgAssets}home_icon.svg";
  static String bookIcon = "${SvgAssets.svgAssets}book_icon.svg";
  static String messageIcon = "${SvgAssets.svgAssets}message_icon.svg";
  static String favIcon = "${SvgAssets.svgAssets}fav_icon.svg";
  static String toothIcon = "${SvgAssets.svgAssets}tooth_icon.svg";
  static String heartIcon = "${SvgAssets.svgAssets}heart_icon.svg";
  static String eyeIcon = "${SvgAssets.svgAssets}eye_icon.svg";
  static String bodyIcon = "${SvgAssets.svgAssets}body_icon.svg";
  static String generalDoctor = "${SvgAssets.svgAssets}general_doctor.svg";
}
import '../../data/models/page_model.dart';

abstract class Pages {
  static List<PageModel> pageList = [
    PageModel(
        picture: "assets/images/onboarding1.png",
        title: "Find Trusted Doctors",
        subTitle: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old."),
    PageModel(
        picture: "assets/images/onboarding2.png",
        title: "Choose Best Doctors",
        subTitle: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old."),
    PageModel(
        picture: "assets/images/onboarding3.png",
        title: "Easy Appointments",
        subTitle: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old."),
  ];
}
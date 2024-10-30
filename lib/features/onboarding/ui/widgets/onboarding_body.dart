import 'package:flutter/material.dart';

import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/features/onboarding/data/models/page_model.dart';

import 'package:doctor_hunt/features/onboarding/ui/widgets/draw_bg_circle.dart';
import 'package:doctor_hunt/features/onboarding/ui/widgets/skip_button.dart';
import '../../logic/entities/onboarding_page.dart';
import '../widgets/page_view_item.dart';
import '../widgets/build_smooth_indicator.dart';
import '../widgets/get_start_button.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});
  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final PageController _pageController = PageController();
  int _currPageIndex = 0;
  List<PageModel> pagesList = Pages.pageList;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currPageIndex = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(children: [
            const DrawBgCircle(),
            PageView.builder(
                controller: _pageController,
                itemCount: pagesList.length,
                itemBuilder: (context, index) {
                  return PageViewItem(myPage: pagesList[index]);
                }),
          ]),
        ),
        verticalSpace(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center, // Indicator
          children: List.generate(
            pagesList.length,
            (index) => BuildSmoothIndicator(
              currPageIndex: _currPageIndex,
              index: index,
            ),
          ),
        ),
        verticalSpace(25),
        GetStartButton(
          onPressed: () {
            setState(() {
              if (_currPageIndex == pagesList.length - 1) {
                Navigator.pushNamed(context, "/loginScreen");
              } else {
                _pageController.jumpToPage(++_currPageIndex);
              }
            });
          },
        ),
        verticalSpace(15),
        SkipButton(onPressed: () {
          Navigator.pushNamed(context, "/loginScreen");
        }),
        verticalSpace(25)
      ],
    );
  }
}
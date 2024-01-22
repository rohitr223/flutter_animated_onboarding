import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screens/controller/controller.onboarding/onboarding_controller.dart';
import 'package:flutter_onboarding_screens/utils/dimensions/screen_dimensions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotNavigation extends StatelessWidget {
  const DotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: ScreenDimensions.bottomNavigationBarHeight(context),
      left: 25.0,
      child: SmoothPageIndicator(
        // navigation dot clicked
        onDotClicked: controller.dotNavigatorClick,
        // dots controllers to detect the current page
        controller: controller.pageController,
        effect: const ExpandingDotsEffect(dotHeight: 7),
        count: 3,
      ),
    );
  }
}

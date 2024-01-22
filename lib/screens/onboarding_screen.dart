import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screens/common/widgets/widget.onboarding/dot_navigation.dart';
import 'package:flutter_onboarding_screens/common/widgets/widget.onboarding/next_button.dart';
import 'package:flutter_onboarding_screens/common/widgets/widget.onboarding/onboarding_page.dart';
import 'package:flutter_onboarding_screens/common/widgets/widget.onboarding/skip_button.dart';
import 'package:flutter_onboarding_screens/controller/controller.onboarding/onboarding_controller.dart';
import 'package:flutter_onboarding_screens/utils/constants/image_urls.dart';
import 'package:flutter_onboarding_screens/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return SafeArea(
      child: Stack(
        children: [
          // onboarding pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              // page - 1
              OnBoardingPage(
                imageUrl: ImageUrls.onboardingGif1,
                title: TextStrings.onboardingTitle1,
                subTitle: TextStrings.onboardingSubTitle1,
              ),
              // page - 2
              OnBoardingPage(
                imageUrl: ImageUrls.onboardingGif2,
                title: TextStrings.onboardingTitle2,
                subTitle: TextStrings.onboardingSubTitle2,
              ),
              // page - 3
              OnBoardingPage(
                imageUrl: ImageUrls.onboardingGif3,
                title: TextStrings.onboardingTitle3,
                subTitle: TextStrings.onboardingSubTitle3,
              ),
            ],
          ),

          // skip button
          const SkipButton(),

          // dot navigation smooth indicator
          const DotNavigation(),

          // circular button
          const NextButton(),
        ],
      ),
    );
  }
}

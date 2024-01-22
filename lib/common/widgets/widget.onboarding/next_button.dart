import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screens/controller/controller.onboarding/onboarding_controller.dart';
import 'package:flutter_onboarding_screens/utils/dimensions/screen_dimensions.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: ScreenDimensions.bottomNavigationBarHeight(context) * 0.65,
      right: 25.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 6, 83, 146),
          foregroundColor: Colors.white,
        ),
        onPressed: OnBoardingController.instance.nextPage,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

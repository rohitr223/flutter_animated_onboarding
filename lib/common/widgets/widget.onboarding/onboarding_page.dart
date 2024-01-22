import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screens/utils/dimensions/screen_dimensions.dart';

// onboarding page components

class OnBoardingPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  const OnBoardingPage({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          // image
          Image.asset(
            imageUrl,
            height: ScreenDimensions.screenHeight(context) * 0.6,
            width: ScreenDimensions.screenWidth(context),
          ),

          // title
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 16.0),

          // subtitle
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

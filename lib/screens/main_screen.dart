import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screens/screens/onboarding_screen.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // since we are using GetX state management
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const Scaffold(
        body: OnboardingScreen(),
      ),
    );
  }
}

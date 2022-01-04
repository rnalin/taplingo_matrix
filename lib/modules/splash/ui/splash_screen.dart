import 'package:flutter/material.dart';
import 'package:taplingo_matrix/core/routes/app_navigator.dart';
import 'package:taplingo_matrix/modules/onboarding/navigation/routes/onboarding_route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          Future.delayed(
            Duration(seconds: 1),
            () {
              _redirectToOnBoarding();
            },
          );

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
            ],
          );
        },
      ),
    );
  }

  void _redirectToOnBoarding() {
    AppNavigator.pushReplacement(OnboardingRoute.of());
  }
}

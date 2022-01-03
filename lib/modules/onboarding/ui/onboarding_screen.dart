import 'package:flutter/material.dart';
import 'package:taplingo_matrix/modules/onboarding/navigation/directions/onboarding_screen_directions.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: _redirectToLogin,
          child: Text('Welcome'),
        ),
      ),
    );
  }

  void _redirectToLogin() {
    OnboardingScreenDirections(this).goToLogin();
  }
}

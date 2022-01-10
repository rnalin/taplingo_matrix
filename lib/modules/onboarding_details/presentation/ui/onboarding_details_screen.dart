import 'package:flutter/material.dart';
import 'package:taplingo_matrix/core/domain/entities/onboarding_entity.dart';

class OnboardingDetailsScreen extends StatelessWidget {
  final OnboardingEntity onboarding;

  final String title = '';
  final String description = '';

  const OnboardingDetailsScreen(
      {Key? key, required OnboardingEntity this.onboarding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(onboarding.title),
      ),
      body: Center(
        child: Text(onboarding.description),
      ),
    );
  }
}

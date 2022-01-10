import 'package:taplingo_matrix/core/domain/entities/onboarding_entity.dart';

class Onboarding extends OnboardingEntity {
  Onboarding({
    required this.title,
    required this.description,
  }) : super(title: title, description: description);

  final String title;
  final String description;
}

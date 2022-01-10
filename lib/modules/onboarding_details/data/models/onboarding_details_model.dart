import 'package:taplingo_matrix/core/domain/onboarding.dart';
import 'package:taplingo_matrix/modules/onboarding_details/domain/entity/onboarding_details_entity.dart';

class OnboardingDetailsModel extends Onboarding
    implements OnboardingDetailsEntity {
  OnboardingDetailsModel({
    required String title,
    required String description,
  }) : super(
          title: title,
          description: description,
        );

  //empty constructor

  factory OnboardingDetailsModel.fromJson(Map<String, dynamic> json) {
    return OnboardingDetailsModel(
      title: json['title'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
    };
  }
}

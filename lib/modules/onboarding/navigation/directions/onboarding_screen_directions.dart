import 'package:taplingo_matrix/core/directions/screen_directions.dart';
import 'package:taplingo_matrix/core/domain/entities/onboarding_entity.dart';
import 'package:taplingo_matrix/core/routes/app_navigator.dart';
import 'package:taplingo_matrix/modules/curiosity/navigation/routes/curiosity_route.dart';
import 'package:taplingo_matrix/modules/login/navigation/routes/login_route.dart';
import 'package:taplingo_matrix/modules/onboarding/ui/onboarding_screen.dart';
import 'package:taplingo_matrix/modules/onboarding_details/presentation/navigation/routes/onboarding_details_route.dart';

class OnboardingScreenDirections extends ScreenDirection {
  OnboardingScreenDirections(
    OnboardingScreen screen,
  ) : super(screen);

  void goToLogin() {
    AppNavigator.push(LoginRoute.of());
  }

  void goToOnboardingDetails(OnboardingEntity model) {
    AppNavigator.push(OnboardingDetailsRoute.of(onboardingDetailsModel: model));
  }

  void goToCuriosityImages() {
    AppNavigator.push(CuriosityRoute.of());
  }
}

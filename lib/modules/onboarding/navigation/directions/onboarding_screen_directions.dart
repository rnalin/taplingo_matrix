import 'package:taplingo_matrix/core/directions/screen_directions.dart';
import 'package:taplingo_matrix/core/routes/app_navigator.dart';
import 'package:taplingo_matrix/modules/login/navigation/routes/login_route.dart';

class OnboardingScreenDirections extends ScreenDirection {
  OnboardingScreenDirections(screen) : super(screen);

  void goToLogin() {
    AppNavigator.pushReplacement(LoginRoute.of());
  }
}

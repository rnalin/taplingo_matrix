import 'package:flutter/widgets.dart';
import 'package:taplingo_matrix/core/domain/entities/onboarding_entity.dart';
import 'package:taplingo_matrix/core/routes/navigation_route.dart';
import 'package:taplingo_matrix/modules/onboarding_details/presentation/ui/onboarding_details_screen.dart';

class OnboardingDetailsRoute extends NavigationRoute {
  static const String path = "/onboarding_details";

  OnboardingDetailsRoute._(Route<Object> route)
      : super(
          path,
          route,
          fullScreen: true,
        );

//pode ser nulo ou sempre será necessário duration e routeTransition?
  static OnboardingDetailsRoute of({
    required OnboardingEntity onboardingDetailsModel,
    Duration? transitionDuration,
    RouteTransitionsBuilder? transitionsBuilder,
    bool animated = false,
  }) {
    OnboardingDetailsScreen _screen = OnboardingDetailsScreen(
      onboarding: onboardingDetailsModel,
    );

    if (animated) {
      return OnboardingDetailsRoute._(PageRouteBuilder(
        transitionDuration: transitionDuration ?? Duration(milliseconds: 500),
        pageBuilder: (context, animation, secondaryAnimation) => _screen,
        transitionsBuilder: transitionsBuilder ??
            (context, animation, secondaryAnimation, child) => FadeTransition(
                  opacity: animation,
                  child: child,
                ),
      ));
    }
    return OnboardingDetailsRoute._(
      PageRouteBuilder(
        settings: RouteSettings(name: path),
        pageBuilder: (
          context,
          animation,
          secondaryAnimation,
        ) =>
            _screen,
      ),
    );
  }
}

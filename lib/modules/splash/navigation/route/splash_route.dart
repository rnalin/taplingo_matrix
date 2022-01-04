import 'package:flutter/widgets.dart';
import 'package:taplingo_matrix/core/routes/navigation_route.dart';
import 'package:taplingo_matrix/core/routes/route_transition.dart';
import 'package:taplingo_matrix/modules/login/ui/login_screen.dart';

class SplashRoute extends NavigationRoute {
  static String path = "/splash";

  SplashRoute._(Route<Object> route)
      : super(
          path,
          route,
          fullScreen: true,
        );

  static SplashRoute of({
    Duration? transitionDuration,
    RouteTransitionsBuilder? transitionsBuilder,
    bool animated = true,
  }) {
    const LoginScreen _screen = LoginScreen();

    if (animated) {
      return SplashRoute._(
        PageRouteBuilder(
          settings: RouteSettings(name: path),
          pageBuilder: (
            context,
            animation,
            secondaryAnimation,
          ) =>
              _screen,
          transitionDuration:
              transitionDuration ?? RouteTransitions.DEFAULT_DURATION,
          transitionsBuilder:
              transitionsBuilder ?? RouteTransitions.DEFAULT_TRANSITION,
        ),
      );
    }

    return SplashRoute._(
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

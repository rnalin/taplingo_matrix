import 'package:flutter/cupertino.dart';
import 'package:taplingo_matrix/core/routes/navigation_route.dart';
import 'package:taplingo_matrix/core/routes/route_transition.dart';
import 'package:taplingo_matrix/core/service_locator/service_locator_config.dart';
import 'package:taplingo_matrix/modules/curiosity/ui/curiosity_images_screen.dart';

class CuriosityRoute extends NavigationRoute {
  static String path = "/curiosity";

  CuriosityRoute._(Route<Object> route)
      : super(
          path,
          route,
          fullScreen: true,
        );

  static CuriosityRoute of({
    Duration? transitionDuration,
    RouteTransitionsBuilder? transitionsBuilder,
    bool animated = true,
  }) {
    CuriosityImagesScreen _screen = CuriosityImagesScreen(
      getMarsImagesInputPort: ServiceLocatorConfig.provide(),
    );

    if (animated) {
      return CuriosityRoute._(
        PageRouteBuilder(
          settings: RouteSettings(name: path),
          pageBuilder: (
            context,
            animation,
            secondaryAnimation,
          ) =>
              _screen,
          transitionDuration:
              transitionDuration ?? const Duration(milliseconds: 800),
          transitionsBuilder:
              transitionsBuilder ?? RouteTransitions.DEFAULT_TRANSITION,
        ),
      );
    }

    return CuriosityRoute._(
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

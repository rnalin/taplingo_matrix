import 'package:flutter/cupertino.dart';
import 'package:taplingo_matrix/core/routes/navigation_route.dart';
import 'package:taplingo_matrix/core/routes/route_transition.dart';
import 'package:taplingo_matrix/modules/curiosity_details/ui/curiosity_image_details_screen.dart';

class CuriosityImageDetailsRoute extends NavigationRoute {
  static String path = "/curiosityImageDetails";

  CuriosityImageDetailsRoute._(Route<Object> route)
      : super(
          path,
          route,
          fullScreen: true,
        );

  static CuriosityImageDetailsRoute of({
    required String urlImage,
    Duration? transitionDuration,
    RouteTransitionsBuilder? transitionsBuilder,
    bool animated = true,
  }) {
    CuriosityImageDetailsScreen _screen = CuriosityImageDetailsScreen(
      urlImage: urlImage,
    );
    if (animated) {
      return CuriosityImageDetailsRoute._(
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

    return CuriosityImageDetailsRoute._(
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

import 'package:taplingo_matrix/core/directions/screen_directions.dart';
import 'package:taplingo_matrix/core/routes/app_navigator.dart';
import 'package:taplingo_matrix/modules/curiosity/ui/curiosity_images_screen.dart';
import 'package:taplingo_matrix/modules/curiosity_details/navigation/routes/curiosity_image_details_route.dart';

class CuriosityImagesScreenDirections
    extends ScreenDirection<CuriosityImagesScreen> {
  CuriosityImagesScreenDirections(CuriosityImagesScreen screen) : super(screen);

  void goToCuriosityImageDetails(String urlImage) {
    AppNavigator.push(CuriosityImageDetailsRoute.of(urlImage: urlImage));
  }
}

import 'package:taplingo_matrix/modules/curiosity/data/models/curiosity_model.dart';

abstract class GetMarsImagesInputPort {
  Stream<List<CuriosityModel>> getMarsImages();
}

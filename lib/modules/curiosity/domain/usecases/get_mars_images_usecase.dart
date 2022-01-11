import 'package:injectable/injectable.dart';
import 'package:taplingo_matrix/modules/curiosity/data/models/curiosity_model.dart';
import 'package:taplingo_matrix/modules/curiosity/domain/ports/input/get_mars_images_input_port.dart';
import 'package:taplingo_matrix/modules/curiosity/domain/ports/output/get_mars_images_output_port.dart';

@singleton
class GetMarsImagesUsecase implements GetMarsImagesInputPort {
  const GetMarsImagesUsecase(this._outputPort);

  final GetMarsImagesOutputPort _outputPort;

  @override
  Stream<List<CuriosityModel>> getMarsImages() {
    return _outputPort.getMarsImages();
  }
}

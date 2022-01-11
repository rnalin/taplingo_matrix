import 'package:injectable/injectable.dart';
import 'package:taplingo_matrix/modules/curiosity/data/repositories/curiosity_repository.dart';
import 'package:taplingo_matrix/modules/curiosity/domain/ports/input/get_mars_images_input_port.dart';
import 'package:taplingo_matrix/modules/curiosity/domain/ports/output/get_mars_images_output_port.dart';
import 'package:taplingo_matrix/modules/curiosity/domain/usecases/get_mars_images_usecase.dart';

@module
abstract class CuriosityImagesCoreModule {
  @singleton
  GetMarsImagesInputPort getMarsImagesInputPort(
    GetMarsImagesUsecase useCase,
  ) =>
      useCase;

  @singleton
  GetMarsImagesOutputPort getMarsImagesOutputPort(
    CuriosityRepository repository,
  ) =>
      repository;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../modules/curiosity/data/repositories/curiosity_repository.dart'
    as _i6;
import '../../modules/curiosity/domain/ports/input/get_mars_images_input_port.dart'
    as _i12;
import '../../modules/curiosity/domain/ports/output/get_mars_images_output_port.dart'
    as _i9;
import '../../modules/curiosity/domain/usecases/get_mars_images_usecase.dart'
    as _i10;
import '../../modules/curiosity/modules/curiosity_images_core_module.dart'
    as _i14;
import '../http_client/http_client.dart' as _i3;
import '../http_client/http_client_impl.dart' as _i4;
import '../ports/input/fetch_onboarding_input_port.dart' as _i11;
import '../ports/output/fetch_onboarding_output_port.dart' as _i7;
import '../repository/onboarding_repository.dart' as _i5;
import '../usecase/fetch_onboarding_use_case.dart' as _i8;
import 'modules/onboarding_core_module.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final onboardingCoreModule = _$OnboardingCoreModule();
  final curiosityImagesCoreModule = _$CuriosityImagesCoreModule();
  gh.factory<_i3.HttpClient>(() => _i4.HttpClientImpl());
  gh.singleton<_i5.OnboardingRepository>(_i5.OnboardingRepository());
  gh.singleton<_i6.CuriosityRepository>(
      _i6.CuriosityRepository(get<_i3.HttpClient>()));
  gh.singleton<_i7.FetchOnboardingOutputPort>(onboardingCoreModule
      .fetchOnboardingOutputPort(get<_i5.OnboardingRepository>()));
  gh.singleton<_i8.FetchOnboardingUseCase>(
      _i8.FetchOnboardingUseCase(get<_i7.FetchOnboardingOutputPort>()));
  gh.singleton<_i9.GetMarsImagesOutputPort>(curiosityImagesCoreModule
      .getMarsImagesOutputPort(get<_i6.CuriosityRepository>()));
  gh.singleton<_i10.GetMarsImagesUsecase>(
      _i10.GetMarsImagesUsecase(get<_i9.GetMarsImagesOutputPort>()));
  gh.singleton<_i11.FetchOnboardingInputPort>(onboardingCoreModule
      .fetchOnboardingInputPort(get<_i8.FetchOnboardingUseCase>()));
  gh.singleton<_i12.GetMarsImagesInputPort>(curiosityImagesCoreModule
      .getMarsImagesInputPort(get<_i10.GetMarsImagesUsecase>()));
  return get;
}

class _$OnboardingCoreModule extends _i13.OnboardingCoreModule {}

class _$CuriosityImagesCoreModule extends _i14.CuriosityImagesCoreModule {}

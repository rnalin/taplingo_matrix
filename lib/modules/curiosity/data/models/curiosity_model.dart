import 'package:freezed_annotation/freezed_annotation.dart';
part 'curiosity_model.freezed.dart';
part 'curiosity_model.g.dart';

@freezed
class CuriosityModel with _$CuriosityModel {
  const factory CuriosityModel({
    required int id,
    required String img_src,
    required String earth_date,
  }) = _CuriosityModel;

  factory CuriosityModel.fromJson(Map<String, dynamic> json) =>
      _$CuriosityModelFromJson(json);
}

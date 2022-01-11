import 'package:taplingo_matrix/modules/curiosity/domain/entities/curiosity_entity.dart';

class CuriosityModel extends CuriosityEntity {
  CuriosityModel(
      {required int id, required String urlImage, required String earthDate})
      : super(id: id, urlImage: urlImage, earthDate: earthDate);

  factory CuriosityModel.fromJson(Map<String, dynamic> json) => CuriosityModel(
        id: json["id"],
        urlImage: json["img_src"],
        earthDate: json["earth_date"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": urlImage,
        "earth_date": earthDate,
      };
}

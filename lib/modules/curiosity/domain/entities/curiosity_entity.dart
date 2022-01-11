import 'package:equatable/equatable.dart';

class CuriosityEntity extends Equatable {
  final int id;
  final String urlImage;
  final String earthDate;

  CuriosityEntity(
      {required this.id, required this.urlImage, required this.earthDate});

  @override
  List<Object> get props => [id, urlImage, earthDate];
}

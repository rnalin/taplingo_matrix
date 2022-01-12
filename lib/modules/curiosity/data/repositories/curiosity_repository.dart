import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:taplingo_matrix/core/http_client/http_client_requests.dart';
import 'package:taplingo_matrix/core/utils/keys/nasa_keys.dart';
import 'package:taplingo_matrix/modules/curiosity/data/datasources/endpoints/curiosity_endpoints.dart';
import 'package:taplingo_matrix/modules/curiosity/data/models/curiosity_model.dart';
import 'package:taplingo_matrix/modules/curiosity/domain/ports/output/get_mars_images_output_port.dart';

@singleton
class CuriosityRepository implements GetMarsImagesOutputPort {
  final HttpClientRequests client;

  CuriosityRepository(this.client);

  @override
  Stream<List<CuriosityModel>> getMarsImages() async* {
    Stream<HttpResponse> responses = client
        .get((CuriosityEndpoints.getMarsImagesURL(NasaKeys.apiKey)).toString());
    HttpResponse response = await responses.first;
    if (response.statusCode == 200) {
      yield _getListOfCuriosityImages(response);
    }
  }

  List<CuriosityModel> _getListOfCuriosityImages(HttpResponse response) {
    Map<String, dynamic> data =
        Map<String, dynamic>.from(json.decode(response.data));
    return (data['photos'] as List)
        .map((e) => CuriosityModel.fromJson(e))
        .toList();
  }
}

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:taplingo_matrix/core/http_client/http_client_requests.dart';
import 'package:taplingo_matrix/modules/curiosity/data/models/curiosity_model.dart';
import 'package:taplingo_matrix/modules/curiosity/data/repositories/curiosity_repository.dart';

class MockHttpClientRequests extends Mock implements HttpClientRequests {}

void main() {
  late HttpClientRequests request;
  late CuriosityRepository repository;
  setUp(() {
    request = MockHttpClientRequests();
    repository = CuriosityRepository(request);
  });
  test('should return a steram of CuriosityModel', () async {
    expect(
      repository.getMarsImages(),
      isA<Stream<List<CuriosityModel>>>(),
    );
  });
}

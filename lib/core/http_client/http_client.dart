import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:taplingo_matrix/core/http_client/http_client_requests.dart';

@Injectable(as: HttpClientRequests)
class HttpClient implements HttpClientRequests {
  final client = http.Client();

  @override
  Stream<HttpResponse> get(String url) async* {
    final response = await client.get(Uri.parse(url));
    yield HttpResponse(statusCode: response.statusCode, data: response.body);
  }
}

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:taplingo_matrix/core/http_client/http_client.dart';

@Injectable(as: HttpClient)
class HttpClientImpl implements HttpClient {
  final client = http.Client();

  @override
  Future<HttpResponse> get(String url) async {
    final response = await client.get(Uri.parse(url));
    return HttpResponse(statusCode: response.statusCode, data: response.body);
  }
}

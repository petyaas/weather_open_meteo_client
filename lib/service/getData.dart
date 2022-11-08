import 'package:http/http.dart' as http;
class GetData{
  Future<http.Response> getMeteo(String url) {
    return http.get(Uri.parse(url));
  }
}
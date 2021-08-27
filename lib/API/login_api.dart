import 'package:http/http.dart' as http;

class LoginApi {
  static final String loginUrl = 'https://reqres.in/api/login';
  static Future<http.Response> login(String email, String password) async {
    var client = http.Client();
    try {
      var uriResponse = await client.post(
        Uri.parse(loginUrl),
        body: {"email": email, "password": password},
      );
      return uriResponse;
    } finally {
      client.close();
    }
  }
}

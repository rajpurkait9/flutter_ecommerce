import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class NetworkHandler {
  static final client = http.Client();
  static final storage = FlutterSecureStorage();
  static String getBaseUrl() {
    return "http://172.20.10.2:3000/api/";
  }

  static Future<String> post(var body, String endpoint) async {
    try {
      var response = await client.post(Uri.parse(getBaseUrl() + endpoint),
          body: body, headers: {"Content-Type": "application/json"});
      return response.body;
    } catch (e) {
      throw e;
    }
  }

  static void storeToken(String token) async {
    await storage.write(key: "token", value: token);
  }

  static Future<String?> getToken() async {
    return await storage.read(key: "token");
  }
}

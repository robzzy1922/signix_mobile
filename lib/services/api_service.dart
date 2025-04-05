import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl =
      'http://localhost:8000/api'; // ganti sesuai IP & port Laravel kamu

  Future<Map<String, dynamic>?> login(
      String identifier, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {'Accept': 'application/json'},
      body: {
        'identifier': identifier, // bisa NIM atau NIP
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      print("Login gagal: ${response.body}");
      return null;
    }
  }
}

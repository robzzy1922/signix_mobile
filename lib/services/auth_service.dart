import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final String baseUrl = "http://127.0.0.1:8000/api/login"; // Untuk Emulator

  Future<Map<String, dynamic>> login(
      String identifier, String password, String role) async {
    final response = await http.post(
      Uri.parse("$baseUrl/login"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        'nim': role == 'ormawa' ? identifier : null,
        'nip': role != 'ormawa' ? identifier : null,
        'password': password,
        'role': role,
      }),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString("token", data['token']);
      await prefs.setString("role", role);
      return data;
    } else {
      throw Exception("Login gagal");
    }
  }
}

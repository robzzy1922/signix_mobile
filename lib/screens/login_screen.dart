import 'package:flutter/material.dart';
import 'package:signix_mobile/services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  final String role;
  const LoginScreen({Key? key, required this.role}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _identifierController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService _authService = AuthService();

  void _login() async {
    try {
      var response = await _authService.login(
        _identifierController.text,
        _passwordController.text,
        widget.role,
      );

      if (response['status'] == 'success') {
        Navigator.pushReplacementNamed(context, "/${widget.role}_dashboard");
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login gagal")));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login ${widget.role}")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _identifierController,
              decoration: InputDecoration(
                labelText: widget.role == 'ormawa' ? "Masukkan NIM" : "Masukkan NIP",
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: Text("Masuk"),
            ),
          ],
        ),
      ),
    );
  }
}

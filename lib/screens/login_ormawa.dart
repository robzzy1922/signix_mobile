import 'package:flutter/material.dart';

class LoginOrmawa extends StatelessWidget {
  const LoginOrmawa({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Masuk Sebagai Ormawa")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: "NIM"),
            ),
            const TextField(
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementasi login di sini
              },
              child: const Text("Masuk"),
            ),
          ],
        ),
      ),
    );
  }
}

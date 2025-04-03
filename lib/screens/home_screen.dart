import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Spacer(),

          // Logo SIGNIX
          Image.asset(
            "assets/images/signix_logo.png",
            width: 180, // Sesuaikan ukuran logo
          ),

          const SizedBox(height: 30),

          // Text "Masuk Sebagai"
          const Text(
            "Masuk Sebagai",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          // Tombol Login
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLoginButton("Ormawa", Colors.blue),
              const SizedBox(width: 10),
              _buildLoginButton("Dosen", Colors.blue),
            ],
          ),

          const SizedBox(height: 10),

          _buildLoginButton("Kemahasiswaan", Colors.lightBlue),

          const Spacer(),

          // Dekorasi bagian bawah
          ClipPath(
            clipper: BottomWaveClipper(),
            child: Container(
              height: 120,
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  // Widget untuk tombol login
  Widget _buildLoginButton(String title, String role) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => LoginScreen(role: role)));
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, foregroundColor: Colors.white),
      child: Text(title),
    );
  }
}

// Custom clipper untuk dekorasi bagian bawah
class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(
      size.width / 2,
      size.height + 20,
      size.width,
      size.height - 30,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

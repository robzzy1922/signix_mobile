import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_ormawa.dart';
import 'screens/login_dosen.dart';
import 'screens/login_kemahasiswaan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Signix',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login_ormawa': (context) => const LoginOrmawa(),
        '/login_dosen': (context) => const LoginDosen(),
        '/login_kemahasiswaan': (context) => const LoginKemahasiswaan(),
      },
    );
  }
}

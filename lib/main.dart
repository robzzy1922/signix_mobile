import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/ormawa_dashboard.dart';
// import 'screens/dosen_dashboard.dart';
// import 'screens/kemahasiswaan_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Signix App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login_ormawa': (context) => const LoginScreen(role: 'ormawa'),
        '/login_dosen': (context) => const LoginScreen(role: 'dosen'),
        '/login_kemahasiswaan': (context) =>
            const LoginScreen(role: 'kemahasiswaan'),
        '/ormawa_dashboard': (context) => const OrmawaDashboard(),
        // '/dosen_dashboard': (context) => const DosenDashboard(),
        // '/kemahasiswaan_dashboard': (context) => const KemahasiswaanDashboard(),
      },
    );
  }
}

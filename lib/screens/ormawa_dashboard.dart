import 'package:flutter/material.dart';

class OrmawaDashboard extends StatelessWidget {
  const OrmawaDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard Ormawa")),
      body: Center(child: Text("Selamat datang di dashboard Ormawa")),
    );
  }
}

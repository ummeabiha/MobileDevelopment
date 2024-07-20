import 'package:flutter/material.dart';
import 'package:flutter_basics/ListViewExample.dart';
import 'package:flutter_basics/LoginPage.dart';
import 'package:flutter_basics/Q6.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: LoginPage(),
        ),
      ),
    );
  }
}

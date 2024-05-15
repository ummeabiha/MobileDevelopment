import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('App Bar', style: TextStyle(color: Colors.white))),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}

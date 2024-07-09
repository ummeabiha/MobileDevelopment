import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '(SE-21014) Syeda Umm E Abiha',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('(SE-21014) Syeda Umm E Abiha'),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              print('Hello');
            },
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

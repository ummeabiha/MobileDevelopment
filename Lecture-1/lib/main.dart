import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImagePage(),
    );
  }
}

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SE-21014'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/images/bg.jpg',
                width: 600,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Syeda Umm E Abiha Rizvi',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center, // Center the text
            ),
          ],
        ),
      ),
    );
  }
}

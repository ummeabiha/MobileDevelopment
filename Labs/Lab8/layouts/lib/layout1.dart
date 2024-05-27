import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("(SE-21014) SYEDA UMM E ABIHA RIZVI"),
            backgroundColor: Colors.orange[300],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red[300],
                height: 100,
              ),
              Container(
                color: Colors.green[200],
                height: 100,
              ),
              Container(
                color: Colors.blue[100],
                height: 100,
              ),
              Container(
                color: Colors.orange[200],
                height: 100,
              ),
              Divider(
                color: Colors.black, // Color of the divider
                height: 20, // Space around the divider
                thickness: 2, // Thickness of the divider
              ),
              Row(
                children: [
                  Container(
                    color: const Color.fromRGBO(225, 190, 231, 1),
                    width: 98,
                    height: 100,
                  ),
                  Container(
                    color: Colors.pink[200],
                    width: 98,
                    height: 100,
                  ),
                  Container(
                    color: Colors.yellow[400],
                    width: 98,
                    height: 100,
                  ),
                  Container(
                    color: Colors.blue[200],
                    width: 98,
                    height: 100,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

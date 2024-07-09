import 'package:flutter/material.dart';

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
          child: Column(children: [
            Row(children: [
              TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  decoration: InputDecoration(
                  labelText: 'Username',
                  hintText: 'What do people call you?',
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  suffixIcon: Icon(
                    Icons.person_outline_rounded,
                    color: Colors.grey,
                  ),

                  ),
                )
            ],),



          ],),
 
          ),
        ),
      );
  }
}

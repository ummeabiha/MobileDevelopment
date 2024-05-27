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
          title: const Text("(SE-21014) SYEDA UMM E ABIHA"),
          backgroundColor: Colors.blue[200],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      print("Next button pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Background color
                      foregroundColor: Colors.white, // Text color
                    ),
                    child: const Text("Button 1"),
                  ),
                  const SizedBox(
                      width: 10), // Adding some space between the buttons
                  ElevatedButton(
                    onPressed: () {
                      print("Back button pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Background color
                      foregroundColor: Colors.white, // Text color
                    ),
                    child: const Text("Button 2"),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0), // Padding above the Row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Adding TextFields in the second row
                    Container(
                      width: 150,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "First Name",
                          border:
                              const UnderlineInputBorder(), // Bottom border only
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Space between TextFields
                    Container(
                      width: 150,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Last Name",
                          border:
                              const UnderlineInputBorder(), // Bottom border only
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

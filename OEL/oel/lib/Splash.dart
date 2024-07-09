import 'package:flutter/material.dart';
import 'dart:async';

import 'package:oel/Home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    const splashDuration = Duration(seconds: 5);

    void navigateToMainScreen() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Home()),
      );
    }
    Timer(splashDuration, navigateToMainScreen);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 27, 48), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: 50.0),
            const SizedBox(height: 20),
            const Text(
              'Quiz Application',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));}, 
              child: Text("Home")),
          ],
        ),
      ),
    );
  }
}


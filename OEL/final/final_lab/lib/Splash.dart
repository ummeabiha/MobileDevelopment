import 'package:final_lab/NameInput.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    const splashDuration = Duration(seconds: 5);

    void navigateToMainScreen() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => NameInput()),
      );
    }

    Timer(splashDuration, navigateToMainScreen);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 27, 48),
      body: Center(
        child: Container(
            child: CircleAvatar(child: Text("A"),)
        ),
      ),
    );
  }
}

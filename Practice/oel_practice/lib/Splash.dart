import 'dart:async';
import 'package:flutter/material.dart';
import 'package:oel_practice/Grid.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Duration for which the splash screen will be visible (3 seconds in this case)
    const splashDuration = Duration(seconds: 3);

    // Navigates to the main screen after the splashDuration
    void navigateToMainScreen() {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Grid()),
      );
    }

    // Start a timer when the splash screen is built
    Timer(splashDuration, navigateToMainScreen);

    return Scaffold(
      backgroundColor: Colors.blue, // Background color of the splash screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png'),
            SizedBox(height: 20),
            Text(
              'My App', // Replace with your app name
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

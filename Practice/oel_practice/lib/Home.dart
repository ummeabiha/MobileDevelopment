import 'package:flutter/material.dart';
import 'package:oel_practice/Splash.dart';

class Home extends StatelessWidget {
  final String bmi;

  const Home({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: Container(
              child: Column(children: [
        Text('Welcome to Home! Your BMI is $bmi'),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => SplashScreen()));
            },
            child: Text('Splash'))
        // Image.asset('assets/logo.png', width: 200),
      ]))),
    );
  }
}

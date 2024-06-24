import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String bmi;

  const Home({Key? key, required this.bmi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text('Welcome to Home! Your BMI is $bmi'),
      ),
    );
  }
}

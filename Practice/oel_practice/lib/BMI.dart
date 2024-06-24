import 'package:flutter/material.dart';

import 'Home.dart';

class BMI extends StatelessWidget {
  BMI({super.key});
  final heightController = TextEditingController();
  final weightController = TextEditingController();

  double calculateBMI() {
    double weight = double.parse(weightController.text);
    double height = double.parse(heightController.text);
    return (weight / (height * height));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
          backgroundColor: Colors.black,
        ),
        body: Form(
          child: Center(
            child: Column(
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  controller: heightController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Height",
                    hintText: "10-112 inches",
                    suffixIcon: Icon(Icons.accessibility),
                  ),
                ),
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  controller: weightController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Weight",
                    hintText: "10-400 lbs",
                    suffixIcon: Icon(Icons.accessibility),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    double bmi = calculateBMI();
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text('Your BMI is ${bmi.toStringAsFixed(2)}'),
                      ),
                    );
                  },
                  child: Text('Calculate BMI'),
                ),
                ElevatedButton(
                  onPressed: () {
                    double bmi = calculateBMI();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Home(bmi: bmi.toStringAsFixed(2))),
                    );
                  },
                  child: Text('Go to Home'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

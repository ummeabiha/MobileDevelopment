import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double weight = 60;
  double heightFeet = 5;
  double heightInches = 6;
  String result = "";
  var bg = Colors.indigo.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Container(
        color: bg,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'BMI',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                const Text('Enter your weight in kg:'),
                Slider(
                  value: weight,
                  min: 30,
                  max: 150,
                  divisions: 120,
                  label: weight.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      weight = value;
                    });
                  },
                ),
                Text(
                  '${weight.round()} kg',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                const Text('Enter your height in feet:'),
                Slider(
                  value: heightFeet,
                  min: 3,
                  max: 7,
                  divisions: 4,
                  label: heightFeet.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      heightFeet = value;
                    });
                  },
                ),
                Text(
                  '${heightFeet.round()} ft',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                const Text('Enter your height in inches:'),
                Slider(
                  value: heightInches,
                  min: 0,
                  max: 11,
                  divisions: 11,
                  label: heightInches.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      heightInches = value;
                    });
                  },
                ),
                Text(
                  '${heightInches.round()} in',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    var totalInch = (heightFeet * 12) + heightInches;
                    var tcm = totalInch * 2.54;
                    var totalM = tcm / 100;
                    var bmi = weight / (totalM * totalM);
                    var msg = "";
                    if (bmi > 25) {
                      msg = "You are overweight";
                      bg = Colors.orange.shade200;
                    } else if (bmi < 18) {
                      msg = "You are underweight";
                      bg = Colors.red.shade300;
                    } else {
                      msg = "You are healthy";
                      bg = Colors.green.shade200;
                    }
                    setState(() {
                      result = "$msg \nYour BMI is: ${bmi.toStringAsFixed(2)}";
                    });
                  },
                  child: const Text('Calculate'),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  result,
                  style: const TextStyle(fontSize: 19),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

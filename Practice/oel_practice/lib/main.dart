// import 'package:flutter/material.dart';
// import 'package:oel_practice/BMI.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/bmi',
//       routes: {
//         '/bmi': (context) => BMI(),
//       },
//       //home: Grid(),
//     );
//   }
// }

import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Duration for which the splash screen will be visible (3 seconds in this case)
    const splashDuration = Duration(seconds: 3);

    // Navigates to the main screen after the splashDuration
    void navigateToMainScreen() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => RangeSliderDemo()),
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

class Grid extends StatelessWidget {
  Grid({super.key});

  final colors = [
    Colors.green,
    Colors.black,
    Colors.blue,
    Colors.pink,
    Colors.orange,
    Colors.yellow,
    Colors.red,
    Colors.white,
    Colors.grey
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Grid'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: colors.length,
        itemBuilder: (context, index) {
          var myColor = colors[index];
          return InkWell(
            child: Material(
              color: myColor,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  myColor.toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home2(color: myColor),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Home2 extends StatelessWidget {
  final Color color;

  const Home2({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text('Selected Color'),
      ),
      body: Container(
        color: color,
        child: Center(
          child: Text(
            'This is the selected color!',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}


class RangeSliderDemo extends StatefulWidget {
  const RangeSliderDemo({super.key});

  @override
  _RangeSliderDemoState createState() => _RangeSliderDemoState();
}

class _RangeSliderDemoState extends State<RangeSliderDemo> {
  RangeValues _currentRangeValues = const RangeValues(20, 60);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Range Slider Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selected range: ${_currentRangeValues.start.round()} - ${_currentRangeValues.end.round()}',
              style: TextStyle(fontSize: 20),
            ),
            RangeSlider(
              values: _currentRangeValues,
              min: 0,
              max: 100,
              divisions: 20,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

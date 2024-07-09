import 'package:flutter/material.dart';

class Quiz1 extends StatefulWidget {
  const Quiz1({super.key});

  @override
  Quiz1State createState() => Quiz1State();
}

class Quiz1State extends State<Quiz1> {
  int? _selectedValue;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Q1- What is the capital of Pakistan?',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(height: 20),
            RadioListTile<int>(
              title: const Text('Islamabad'),
              value: 1,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                  score = value == 1 ? 1 : 0;
                });
              },
            ),
            RadioListTile<int>(
              title: const Text('Karachi'),
              value: 0,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            RadioListTile<int>(
              title: const Text('Lahore'),
              value: 0,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Quiz2(myScore: score)));
                },
                child: const Text("Next")),
          ],
        ),
      ),
    );
  }
}

class Quiz2 extends StatefulWidget {
  final int myScore;
  const Quiz2({super.key, required this.myScore});

  @override
  Quiz2State createState() => Quiz2State();
}

class Quiz2State extends State<Quiz2> {
  int? _selectedValue;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Q2- What is the largest continent?',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(height: 20),
            RadioListTile<int>(
              title: const Text('Asia'),
              value: 1,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                  score = value == 1 ? widget.myScore + 1 : widget.myScore;
                });
              },
            ),
            RadioListTile<int>(
              title: const Text('Africa'),
              value: 0,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            RadioListTile<int>(
              title: const Text('Europe'),
              value: 0,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Quiz3(myScore: score)));
                },
                child: const Text("Next")),
          ],
        ),
      ),
    );
  }
}

class Quiz3 extends StatefulWidget {
  final int myScore;
  const Quiz3({super.key, required this.myScore});

  @override
  Quiz3State createState() => Quiz3State();
}

class Quiz3State extends State<Quiz3> {
  int? _selectedValue;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Q3- What is the longest river in the world?',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(height: 20),
            RadioListTile<int>(
              title: const Text('Nile'),
              value: 1,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                  score = value == 1 ? widget.myScore + 1 : widget.myScore;
                });
              },
            ),
            RadioListTile<int>(
              title: const Text('Amazon'),
              value: 0,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            RadioListTile<int>(
              title: const Text('Yangtze'),
              value: 0,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Quiz4(myScore: score)));
                },
                child: const Text("Next")),
          ],
        ),
      ),
    );
  }
}

class Quiz4 extends StatefulWidget {
  final int myScore;
  const Quiz4({super.key, required this.myScore});

  @override
  Quiz4State createState() => Quiz4State();
}

class Quiz4State extends State<Quiz4> {
  int? _selectedValue;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Q4- What is the tallest mountain in the world?',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(height: 20),
            RadioListTile<int>(
              title: const Text('Mount Everest'),
              value: 1,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                  score = value == 1 ? widget.myScore + 1 : widget.myScore;
                });
              },
            ),
            RadioListTile<int>(
              title: const Text('K2'),
              value: 0,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            RadioListTile<int>(
              title: const Text('Kangchenjunga'),
              value: 0,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Quiz5(myScore: score)));
                },
                child: const Text("Next")),
          ],
        ),
      ),
    );
  }
}

class Quiz5 extends StatefulWidget {
  final int myScore;
  const Quiz5({super.key, required this.myScore});

  @override
  Quiz5State createState() => Quiz5State();
}

class Quiz5State extends State<Quiz5> {
  int? _selectedValue;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Q5- What is the largest ocean?',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(height: 20),
            RadioListTile<int>(
              title: const Text('Pacific Ocean'),
              value: 1,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                  score = value == 1 ? widget.myScore + 1 : widget.myScore;
                });
              },
            ),
            RadioListTile<int>(
              title: const Text('Atlantic Ocean'),
              value: 0,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            RadioListTile<int>(
              title: const Text('Indian Ocean'),
              value: 0,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Result(score: score)));
                },
                child: const Text("Finish")),
          ],
        ),
      ),
    );
  }
}

class Result extends StatelessWidget {
  final int score;
  const Result({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Your score is: $score',
          style: const TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
    );
  }
}

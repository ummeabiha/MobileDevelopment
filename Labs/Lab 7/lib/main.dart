import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 165, 33, 23),
      ),
      home: DiceRoller(),
    );
  }
}

class DiceRoller extends StatefulWidget {
  @override
  _DiceRollerState createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int die1 = 1;
  int die2 = 1;

  void rollDice() {
    setState(() {
      die1 = Random().nextInt(6) + 1;
      die2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dicee',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 165, 33, 23),
        elevation: 4,
        shadowColor: Colors.black,
      ),
      backgroundColor: const Color.fromARGB(255, 165, 33, 23),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: rollDice,
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 165, 33, 23)),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  child: Image.asset(
                    'assets/images/$die1.png',
                    height: 120,
                    width: 120,
                  ),
                ),
                ElevatedButton(
                  onPressed: rollDice,
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 165, 33, 23)),
                    elevation: MaterialStateProperty.all(0),
                  ),
                  child: Image.asset(
                    'assets/images/$die2.png',
                    height: 120,
                    width: 120,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

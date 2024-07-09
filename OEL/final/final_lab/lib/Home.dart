import 'package:flutter/material.dart';
import 'Home2.dart';

class Home extends StatelessWidget {
  final String name;
  Home({super.key, required this.name});

  final colors = [
    Colors.green,
    Colors.black,
    Colors.blue,
    Colors.pink,
    Colors.orange,
    Colors.yellow,
    Colors.red,
    Colors.white,
    Colors.grey,
    Colors.greenAccent,
    Colors.black12,
    Colors.lightBlue,
    Colors.pinkAccent,
    Colors.orange,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.name),
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
                // child: Text(
                //   myColor.toString(),
                //   style: TextStyle(color: Colors.black),
                // ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home2(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
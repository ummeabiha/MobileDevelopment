import 'package:flutter/material.dart';

// class Grid extends StatefulWidget {
//   Grid({super.key});

//   @override
//   State<Grid> createState() => GridState();
// }

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
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: colors.length,
      itemBuilder: (context, index) {
        var myColor = colors[index];
        return InkWell(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              myColor.toString(),
              style: TextStyle(color: Colors.black),
            ),
            color: myColor,
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
    );
  }
}

class Home2 extends StatelessWidget {
  final Color color;

  const Home2({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'This is the selected color!',
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}

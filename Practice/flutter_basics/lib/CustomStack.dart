import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Positioned.fill(
          child: Container(
            color: Colors.green.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}

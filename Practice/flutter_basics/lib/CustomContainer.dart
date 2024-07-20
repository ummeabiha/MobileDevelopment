import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String text;

  CustomContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 30,
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
      child: Center(
          child: Text(
        text,
        textAlign: TextAlign.center,
      )),
    );
  }
}

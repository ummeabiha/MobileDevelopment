import 'package:flutter/material.dart';
import 'package:flutter_basics/CustomContainer.dart';

class ProductBox extends StatelessWidget {
  String name, description, price, imageName;

  ProductBox(
      {super.key,
      required this.imageName,
      required this.name,
      required this.description,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 620,
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black)),
            child: Image.asset('assets/images/$imageName', width: 180),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomContainer(text: name),
              CustomContainer(text: description),
              CustomContainer(text: "Price: $price"),
            ],
          )
        ],
      ),
    );
  }
}

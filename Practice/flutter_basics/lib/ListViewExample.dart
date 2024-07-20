import 'package:flutter/material.dart';
import 'package:flutter_basics/ProductBox.dart';

class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});

  final Map<int, List> map = {
    0: ['9.png', "PC", "Gaming PC", 100000],
    1: ['10.png', "Watch", "Smart Watch", 10000],
    2: ['11.png', "HeadPhones", "Audionic Headphones", 15000],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        title: const Text('Product Listings'),
      ),
      body: ListView.builder(
        itemCount: map.length,
        itemBuilder: (context, index) {
          // Extract the list corresponding to the current index
          final List product = map[index]!;

          return ProductBox(
            imageName: product[0],
            name: product[1],
            description: product[2],
            price: product[3].toString(),
          );
        },
      ),
    );
  }
}



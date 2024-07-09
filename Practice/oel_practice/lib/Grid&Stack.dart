import 'package:flutter/material.dart';

class GridAndStack extends StatelessWidget {
  const GridAndStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.purple,
                child: Center(
                  child: Text('Item $index'),
                ),
              );
            }),
        Stack(
          children: [
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
        GridView.count(
          crossAxisCount: 3,
          children: [
            Container(color: Colors.red),
            Container(color: const Color.fromARGB(255, 225, 244, 54)),
            Container(color: const Color.fromARGB(255, 54, 244, 187)),
            Container(color: const Color.fromARGB(255, 54, 89, 244)),
            Container(color: const Color.fromARGB(255, 244, 54, 181)),
          ],
        )
      ],
    ));
  }
}

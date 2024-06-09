import 'package:flutter/material.dart';

class SimpleGridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SE-21014'),
        backgroundColor: Colors.blue[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.pink[200],
              child: Text(
                'Item ${index + 1}',
                style: TextStyle(color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SimpleGridViewExample(),
  ));
}

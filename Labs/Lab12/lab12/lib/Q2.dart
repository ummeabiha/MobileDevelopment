import 'package:flutter/material.dart';

class SimpleGridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SE-21014'),
        backgroundColor: Colors.blue[200],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 15,
        itemBuilder: (context, index) {
          return Center(
            child: Text('Item ${index + 6}',
                style: TextStyle(backgroundColor: Colors.pink[200])),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SimpleGridViewExample(),
  ));
}

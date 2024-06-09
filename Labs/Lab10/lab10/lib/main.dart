import 'package:flutter/material.dart';

class ListViewWithExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView with Expanded Example'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: List.generate(5, (index) {
          return ListTile(
            leading: Icon(Icons.label_important),
            title: Row(
              children: [
                Expanded(
                  child: Text('Item ${index + 1}'),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ListViewWithExpanded(),
  ));
}

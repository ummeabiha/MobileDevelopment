import 'package:flutter/material.dart';

class ListTileExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SE-21014')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            child: Text('MD'),
          ),
          title: Text('Maaz Nadeem'),
          trailing: Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ListTileExample()));
}

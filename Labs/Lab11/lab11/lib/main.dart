import 'package:flutter/material.dart';

class ListTileWithOnTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SE-21014')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
          ),
          title: Text('Headphones'),
          onTap: () {
            print('Tile tapped');
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ListTileWithOnTap()));
}

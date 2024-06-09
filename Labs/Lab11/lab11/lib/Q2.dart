import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SE-21014')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Text('UA'),
              ),
              title: Text('Umm E Abiha'),
              subtitle: Text('ummeabiha.2004@gmail.com'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text('MT'),
              ),
              title: Text('Maham Tariq'),
              subtitle: Text('mahamtkhan.04@gmail.com'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Text('HA'),
              ),
              title: Text('Hamna Aamir'),
              subtitle: Text('hamnaamir.543@gmail.com'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ListViewExample()));
}

import 'package:flutter/material.dart';

class ListViewSeparatedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.separated Example'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(
                10.0), // Use EdgeInsets.all instead of just 10
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                'Item ${index + 1}',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(height: 30, thickness: 2);
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ListViewSeparatedExample(),
  ));
}

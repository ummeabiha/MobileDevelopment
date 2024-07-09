import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Wheel Scroll View Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListWheelScrollViewExample(),
    );
  }
}

class ListWheelScrollViewExample extends StatefulWidget {
  const ListWheelScrollViewExample({super.key});

  @override
  State<ListWheelScrollViewExample> createState() =>
      _ListWheelScrollViewExampleState();
}

class _ListWheelScrollViewExampleState
    extends State<ListWheelScrollViewExample> {
  final List<Color> _colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.brown,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Wheel Scroll View Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListWheelScrollView.useDelegate(
                itemExtent: 50,
                perspective: 0.005,
                diameterRatio: 1.5,
                onSelectedItemChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                physics: const FixedExtentScrollPhysics(),
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: double.infinity,
                      color: _colors[index],
                      child: Text(
                        'Color ${index + 1}',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    );
                  },
                  childCount: _colors.length,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 100,
              width: 100,
              color: _colors[_selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}

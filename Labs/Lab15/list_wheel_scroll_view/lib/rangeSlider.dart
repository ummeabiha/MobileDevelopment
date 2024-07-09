import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Range Slider Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RangeSliderExample(),
    );
  }
}

class RangeSliderExample extends StatefulWidget {
  const RangeSliderExample({super.key});

  @override
  State<RangeSliderExample> createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<RangeSliderExample> {
  RangeValues _currentRangeValues = const RangeValues(20, 80);
  final List<int> _items = List.generate(100, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    final List<int> _filteredItems = _items
        .where((item) =>
            item >= _currentRangeValues.start &&
            item <= _currentRangeValues.end)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Range Slider Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            RangeSlider(
              values: _currentRangeValues,
              min: 1,
              max: 100,
              divisions: 99,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item ${_filteredItems[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

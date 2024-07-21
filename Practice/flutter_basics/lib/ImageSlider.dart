import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Slider'),
        ),
        body: ImageSlider(),
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  double _currentSliderValue = 0;
  final List<String> images = [
    'assets/images/9.png',
    'assets/images/10.png',
    'assets/images/11.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          images[_currentSliderValue.toInt()],
          width: 200,
        ),
        Slider(
          value: _currentSliderValue,
          min: 0,
          max: (images.length - 1).toDouble(),
          divisions: images.length - 1,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ],
    );
  }
}

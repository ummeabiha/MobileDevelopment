import 'package:flutter/material.dart';

void main() => runApp(const SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '(SE-21014) Syeda Umm E Abiha',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('(SE-21014) Syeda Umm E Abiha'),
        ),
        body: const CircleAvatarSnackBarPage(),
      ),
    );
  }
}

class CircleAvatarSnackBarPage extends StatelessWidget {
  const CircleAvatarSnackBarPage({Key? key});

  static const List<Color> avatarColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            avatarColors.length,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  final colorName = getColorName(avatarColors[index]);
                  final snackBar = SnackBar(
                    content: Text(
                        'Tapped CircleAvatar ${index + 1} with color $colorName'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: CircleAvatar(
                  backgroundColor: avatarColors[index],
                  child: Text((index + 1).toString()),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String getColorName(Color color) {
    if (color == Colors.red) return 'Red';
    if (color == Colors.green) return 'Green';
    if (color == Colors.blue) return 'Blue';
    if (color == Colors.yellow) return 'Yellow';
    if (color == Colors.purple) return 'Purple';
    if (color == Colors.orange) return 'Orange';
    return 'Unknown';
  }
}

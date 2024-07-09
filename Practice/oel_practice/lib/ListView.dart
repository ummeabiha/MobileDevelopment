import 'package:flutter/material.dart';
import 'package:oel_practice/Grid&Stack.dart';

class ListViewExample extends StatelessWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List View Example",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: ListGenerator(),
    );
  }
}

class ListGenerator extends StatelessWidget {
  ListGenerator({Key? key}) : super(key: key);
  final List<String> items = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Item "),
            subtitle: Text("Subtitle"),
            leading: Icon(Icons.person, size: 20.0),
            trailing: InkWell(
              child: Text('$index'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GridAndStack()));
              },
            ),
          );
        },
      ),
    );
  }
}

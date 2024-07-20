import 'package:flutter/material.dart';

class Q6 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Ask Me Anything!"),backgroundColor: Colors.blue[100],),
      body: Container(
        child: Center(child: CircleAvatar(
          backgroundColor: Colors.amber,
          radius: 150,
          child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.deepOrange[100],),),),
      ),
    );
  }
}
import 'package:final_lab/Home.dart';
import 'package:flutter/material.dart';

class NameInput extends StatelessWidget {
  @override
  TextEditingController nameController = TextEditingController();

  NameInput({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App Bar"),
        ),
        body: Center(
            child: Container(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Name"),
                  hintText: "Enter Your Name",
                ),
                controller: nameController,
                keyboardType: TextInputType.name,
                validator: (value) {
                  // if (value != value.toString()) {
                  //   debugPrint("Enter a string");
                  // }
                  final RegExp regex = RegExp(r'^[a-zA-Z]+$');
                  if (!regex.hasMatch(value!)) {
                    debugPrint("Enter a string");
                  }
                },
              ),
              ElevatedButton(
                  onPressed: () => {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Home(name: nameController.text.toString())))
                      },
                  child: Text("Next"))
            ],
          ),
        )));
  }
}

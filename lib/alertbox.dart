// ignore_for_file: must_be_immutable, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';

class Boxalert extends StatelessWidget {
  Boxalert({super.key, required this.controllerx, required this.onAdd});

  VoidCallback onAdd;

  TextEditingController controllerx;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: controllerx,
            decoration: InputDecoration(
              hintText: "Enter Note",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  onAdd();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(21),
                  ),
                  height: 50,
                  width: 100,
                  child: Center(
                      child: Text(
                    "Add",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(21),
                  ),
                  height: 50,
                  width: 100,
                  child: Center(
                      child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

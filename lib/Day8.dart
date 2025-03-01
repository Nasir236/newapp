// ignore_for_file: file_names, non_constant_identifier_names, prefer_final_fields, unused_import

import 'package:flutter/material.dart';
import 'package:newapp/alertbox.dart';
import 'package:newapp/Todotile.dart';

class Day8 extends StatefulWidget {
  const Day8({super.key});

  @override
  State<Day8> createState() => _Day8State();
}

class _Day8State extends State<Day8> {
  TextEditingController _Add1 = TextEditingController();
// Second Tric
  void Onchanged(int index) {
    setState(() {
      Notes[index][1] = !Notes[index][1];
    });
  }

  userDialogue() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _Add1,
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
                        setState(() {
                          _Add1.clear();
                          Navigator.pop(context);
                        });
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
        });
  }

  List Notes = [
    ["Hi Nasir Hussain", true],
    ["By Hazrat Hussan", false],
    ["By Asim", false],
    ["By Younas", false],
    ["By Nihan khan", false],
  ];

  onAdd() {
    setState(() {
      Notes.add([_Add1.text.toString(), false]);
      Navigator.pop(context);
    });
  }

  ondelete(int index) {
    setState(() {
      Notes.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Boxalert(
                      controllerx: _Add1,
                      onAdd: () {
                        onAdd();
                      },
                    );
                  });
            },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            title: Text(
              "Day8",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 226, 238, 63),
          ),
          body: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: Notes.length,
              itemBuilder: (context, index) {
                return Todotile(
                    ondelete: () {
                      ondelete(index);
                    },
                    value: Notes[index][1],
                    onChanged: (x) {
                      Onchanged(index);
                    },
                    text: Notes[index][0]);
              })),
    );
  }
}

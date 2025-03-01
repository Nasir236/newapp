// ignore_for_file: unused_import, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:newapp/mytext.dart';
import 'package:newapp/Day8.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Todotile extends StatelessWidget {
  Todotile(
      {super.key,
      required this.ondelete,
      required this.value,
      required this.onChanged,
      required this.text});

  VoidCallback ondelete;

  bool value;
  String text;
  void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: StretchMotion(), children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              ondelete();
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.delete),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30)),
              height: 65,
              width: 100,
            ),
          ),
        ),
      ]),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 226, 238, 63),
              borderRadius: BorderRadius.circular(31)),
          height: 71,
          width: 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  value: value,
                  onChanged: onChanged,
                  activeColor: Colors.white,
                  checkColor: Colors.black,
                  shape: StadiumBorder(side: BorderSide())),
              Container(
                  margin: EdgeInsets.only(left: 61),
                  child: Center(
                    child: Mytext(
                      title: text,
                      check: value,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

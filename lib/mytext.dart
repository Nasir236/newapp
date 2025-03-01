// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  Mytext(
      {super.key,
      required this.title,
      this.Size,
      this.color = Colors.black,
      required this.check});

  String title;
  double? Size;
  Color? color;
  bool check;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: Size,
          color: color,
          fontWeight: FontWeight.bold,
          decoration: check ? TextDecoration.lineThrough : TextDecoration.none),
    );
  }
}

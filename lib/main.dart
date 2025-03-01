// ignore_for_file: camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'Day8.dart';

void main() {
  runApp(const newapp());
}

class newapp extends StatelessWidget {
  const newapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Day8(),
      debugShowCheckedModeBanner: false,
    );
  }
}

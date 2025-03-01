// // ignore_for_file: file_names, non_constant_identifier_names

// import 'package:flutter/material.dart';
// import 'package:newapp/Todotile.dart';

// class Day4second extends StatefulWidget {
//   const Day4second({super.key});

//   @override
//   State<Day4second> createState() => _Day4secondState();
// }

// class _Day4secondState extends State<Day4second> {
//   bool isstracker = false;

//   void Onchanged() {
//     setState(() {
//       if (isstracker == false) {
//         isstracker = true;
//       } else {
//         isstracker = false;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "Todotile",
//             style: TextStyle(color: Colors.white),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.blue,
//         ),
//         body: Column(
//           children: [
//             Todotile(
//                 text: "better choice",
//                 value: isstracker,
//                 onChanged: (x) {
//                   Onchanged();
//                 }),
//             Todotile(
//                 text: "Work On YourSelf",
//                 value: isstracker,
//                 onChanged: (x) {
//                   Onchanged();
//                 }),
//             Todotile(
//                 text: "Are you sure, ",
//                 value: isstracker,
//                 onChanged: (x) {
//                   Onchanged();
//                 }),
//           ],
//         ),
//       ),
//     );
//   }
// }

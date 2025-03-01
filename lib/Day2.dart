// // ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names
// import 'package:flutter/material.dart';

// class Day2 extends StatefulWidget {
//   const Day2({super.key});

//   @override
//   State<Day2> createState() => _Day2State();
// }

// class _Day2State extends State<Day2> {
//   int varibles = 0;

// //function Increment
//   void Increment() {
//     setState(() {
//       varibles++;
//     });
//   }

// // function decrement
//   void Decrement() {
//     setState(() {
//       varibles--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "First App",
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//           backgroundColor: Colors.black,
//           centerTitle: true,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//                 child: Text(
//               "You have pressed This Button",
//               style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold),
//             )),
//             SizedBox(height: 15),
//             Text(
//               varibles.toString(),
//               style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 15),
//             ElevatedButton(
//                 onPressed: () {
//                   Increment();
//                 },
//                 child: Text("Increment")),
//             SizedBox(height: 15),
//             ElevatedButton(
//                 onPressed: () {
//                   Decrement();
//                 },
//                 child: Text("Decrement")),
//           ],
//         ),
//       ),
//     );
//   }
// }

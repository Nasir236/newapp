// // ignore_for_file: file_names, non_constant_identifier_names

// import 'package:flutter/material.dart';
// import 'package:newapp/Todotile.dart';

// class Day5 extends StatefulWidget {
//   const Day5({super.key});

//   @override
//   State<Day5> createState() => _Day5State();
// }

// class _Day5State extends State<Day5> {
// // Second Tric
//   void Onchanged(int index) {
//     setState(() {
//       Notes[index][1] = !Notes[index][1];
//     });
//   }

//   List Notes = [
//     ["Hi Nasir Hussain", true],
//     ["By HAzrat Hussan", false],
//     ["By Asim", false],
//     ["By Younas", false],
//     ["By Nihan khan", false],
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           appBar: AppBar(
//             title: Text(
//               "Day5",
//               style: TextStyle(color: Colors.white),
//             ),
//             centerTitle: true,
//             backgroundColor: Colors.blue,
//           ),
//           body: ListView.builder(
//               scrollDirection: Axis.vertical,
//               itemCount: Notes.length,
//               itemBuilder: (context, index) {
//                 return Todotile(
//                     value: Notes[index][1],
//                     onChanged: (p0) {
//                       Onchanged(index);
//                     },
//                     text: Notes[index][0]);
//               })),
//     );
//   }
// }

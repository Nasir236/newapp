// // ignore_for_file: file_names, non_constant_identifier_names, prefer_final_fields

// import 'package:flutter/material.dart';
// import 'package:newapp/Todotile.dart';

// class Day6 extends StatefulWidget {
//   const Day6({super.key});

//   @override
//   State<Day6> createState() => _Day6State();
// }

// class _Day6State extends State<Day6> {
//   TextEditingController _Add1 = TextEditingController();
// // Second Tric
//   void Onchanged(int index) {
//     setState(() {
//       Notes[index][1] = !Notes[index][1];
//     });
//   }

//   userDialogue() {
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 TextFormField(
//                   controller: _Add1,
//                   decoration: InputDecoration(
//                     hintText: "Enter Note",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           Notes.add([_Add1.text.toString(), false]);
//                           _Add1.clear();
//                           Navigator.pop(context);
//                         });
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.orange,
//                           borderRadius: BorderRadius.circular(21),
//                         ),
//                         height: 50,
//                         width: 100,
//                         child: Center(
//                             child: Text(
//                           "Add",
//                           style: TextStyle(fontSize: 21, color: Colors.white),
//                         )),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 30,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.orange,
//                           borderRadius: BorderRadius.circular(21),
//                         ),
//                         height: 50,
//                         width: 100,
//                         child: Center(
//                             child: Text(
//                           "Cancel",
//                           style: TextStyle(fontSize: 21, color: Colors.white),
//                         )),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           );
//         });
//   }

//   List Notes = [
//     ["Hi Nasir Hussain", true],
//     ["By Hazrat Hussan", false],
//     ["By Asim", false],
//     ["By Younas", false],
//     ["By Nihan khan", false],
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           floatingActionButton: FloatingActionButton(
//             onPressed: () {
//               userDialogue();
//             },
//             child: Icon(Icons.add),
//           ),
//           appBar: AppBar(
//             title: Text(
//               "Day6",
//               style: TextStyle(color: Colors.white),
//             ),
//             centerTitle: true,
//             backgroundColor: Colors.brown,
//           ),
//           body: ListView.builder(
//               scrollDirection: Axis.vertical,
//               itemCount: Notes.length,
//               itemBuilder: (context, index) {
//                 return Todotile(
//                     value: Notes[index][1],
//                     onChanged: (x) {
//                       Onchanged(index);
//                     },
//                     text: Notes[index][0]);
//               })),
//     );
//   }
// }

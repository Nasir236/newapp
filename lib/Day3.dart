// // ignore_for_file: sized_box_for_whitespace, non_constant_identifier_names, prefer_final_fields
// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class Day3 extends StatelessWidget {
//   Day3({super.key});

//   TextEditingController nameController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Center(
//               child: Text(
//             "User Input",
//             style: TextStyle(color: Colors.white),
//           )),
//           backgroundColor: Colors.blue,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//                 child: Padding(
//               padding: const EdgeInsets.all(19.0),
//               child: TextFormField(
//                 decoration: InputDecoration(
//                   icon: Icon(Icons.email),
//                   hintText: "Enter Your Email",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//               ),
//             )),
//             Center(
//                 child: Padding(
//               padding: const EdgeInsets.all(19.0),
//               child: TextFormField(
//                 obscureText: true,
//                 controller: nameController,
//                 decoration: InputDecoration(
//                   icon: Icon(Icons.password),
//                   hintText: "Enter Your Password",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//               ),
//             )),
//             ElevatedButton(
//                 onPressed: () {
//                   print(nameController.text.toString());
//                 },
//                 child: Text("Submit"))
//           ],
//         ),
//       ),
//     );
//   }
// }

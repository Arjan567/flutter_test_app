// import 'package:flutter/material.dart';

// class TODOAPP extends StatefulWidget {
//   const TODOAPP({super.key});

//   @override
//   State<TODOAPP> createState() => _TODOAPPState();
// }

// class _TODOAPPState extends State<TODOAPP> {
//   String value;
  
//   var listTODO = [''],

//   AddToDo(String item) {
//     listTODO.add(item);
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('TODO APP'),
//           centerTitle: true,
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {},
//         ),
//         body: ListView.builder(
//             itemCount: listTODO.length,
//             itemBuilder: (context, index) {
//               return index == 0? Padding(
//                 padding: const EdgeInsets.all(1.0),
//                 child: TextFormField(),
//               ): ListTile(
//                 leading: Icon(Icons.work),
//                 // trailing: Icon(Icons.book),
//                 title: Text(
//                   '${listTODO[index]}',
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//               );
//             }));
//   }
// }




























































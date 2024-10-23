import 'package:flutter/material.dart';

class TODOAPP extends StatefulWidget {
  const TODOAPP({super.key});

  @override
  State<TODOAPP> createState() => _TODOAPPState();
}

class _TODOAPPState extends State<TODOAPP> {
  // String value;

  // var listTODO = [''],

  // AddToDo(String item) {
  //   listTODO.add(item);
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TODO APP'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.work),
                // trailing: Icon(Icons.book),
                title: Text(
                  '${userList[index].name}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              );
            }));
  }
}

class User {
  final String name;
  final String email;

  User({
    required this.name,
    required this.email,
  });
}

List<User> userList = [
  User(name: 'sukadev', email: 'sukadev@gmail.com'),
  User(name: 'arjun', email: 'arjun@gmail.com'),
  User(name: 'sita', email: 'sita@gmail.com'),
  User(name: 'arish', email: 'arish@gmail.com'),
];

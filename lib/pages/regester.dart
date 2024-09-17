import 'package:flutter/material.dart';

class regester extends StatefulWidget {
  @override

  const regester({super.key});
State<regester> createState() => _regester();
}

class _regester extends State<regester> {
  @override
//Navigator.pop(context,MaterialPageRoute(builder: (context)=> Profile()))

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(225, 225, 229, 0.894),
        appBar: AppBar(
          title: Text(
            "Regester your Data",
          ),
          backgroundColor: Color.fromRGBO(25, 219, 41, 1),
          // actions: [
 // ],



        ));
  }
}

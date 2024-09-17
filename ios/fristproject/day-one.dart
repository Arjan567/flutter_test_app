import 'package:flutter/material.dart';

class Dayone extends StatefulWidget {
  const Dayone({super.key});

  @override
  State<Dayone> createState() => _DayoneState();
}

class _DayoneState extends State<Dayone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 231,232 ),
      body: Container(child: Column(children: [
        SizedBox(height: 20),
        Text('Day One', style: TextStyle(fontSize: 30, color: Colors.black),),
        SizedBox(height: 20),
        Text('Welcome to Day One', style: TextStyle(fontSize: 20, color: Colors.black
        ),),
      ],),),
      
    );


  }
}
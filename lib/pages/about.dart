
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _LogoutState();
}

class _LogoutState extends State<About> { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(238, 187, 191, 198),
    appBar: AppBar(
  title: Text('This is about pagae'),
  backgroundColor: Colors.blue,

),
    );
  }
}
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => homeState();
}

class homeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(23, 23, 23, 23),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(247, 44, 200, 1),
          centerTitle: true,
          title:const Text(
            'Home',
            style: TextStyle(color: Colors.amber),
          ),
        ));
  }
}

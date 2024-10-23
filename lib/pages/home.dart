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
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              margin: EdgeInsets.all(11),
              
              width: 200,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

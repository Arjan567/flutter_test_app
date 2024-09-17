import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 204, 45, 240),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(' Go to the Profile page'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(
            'assets/images/Screenshot_2023-04-17-21-14-46-75_965bbf4d18d205f782c6b8409c5773a4.jpg',
            height: 500,
            width: 400,
            fit: BoxFit.cover,
            
          ),
        ),
        const Text('hello arjan',style: TextStyle(color:Color.fromARGB(217, 232, 227, 227),fontSize: 25,inherit: true),),
      ]),
    );

    //physics:
    //   BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
  }
}

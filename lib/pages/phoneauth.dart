import 'package:flutter/material.dart';

class Phoneauth extends StatefulWidget {
  const Phoneauth({super.key});

  @override
  State<Phoneauth> createState() => _PhoneauthState();
}

class _PhoneauthState extends State<Phoneauth> {
TextEditingController phonecontroller =TextEditingController();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(179, 29, 216, 154),

     appBar: AppBar(
backgroundColor: Color.fromARGB(185, 219, 211, 211),
  title: Text('OTP Screen'),
  centerTitle: true,
),

body: Column(
  children: [
    Padding(padding: const EdgeInsets.symmetric(horizontal: 24)),
    TextField(
      controller: phonecontroller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Enter Phone Number',
        hintText: "Enter phone Number",

        )
      ),
    
SizedBox(
  height: 30,
  
),


  ],
),
    );
  }
}
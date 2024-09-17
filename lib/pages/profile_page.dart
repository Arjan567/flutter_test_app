import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:test_app/pages/profile.dart';
import 'package:test_app/pages/Home.dart';
import 'package:test_app/pages/regester.dart';
import 'package:test_app/pages/about.dart';
import 'package:test_app/pages/sign_In.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> menuItems = [
    'profile',
    'Home',
    'About',
    'Sign In',
  ];

  // Function to handle menu item selection
  void _handleMenuItemClick(String value) {
    // You can perform different actions based on the selected item
    switch (value) {
      case 'profile':
        // Handle Profile action
        print('profile selected');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Profile()));

        break;
      case 'Home':
        // Handle Settings action
        print('Home selected');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Home()));
        break;

      case 'About':
        // Handle Logout action
        print('About selected');
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const About()));
        break;

      case 'Sign In':
        // Handle Sign In action
        print('Sign In selected');

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const SignIn()));
        break;
    }
  }

  void _handleButtonPress() {
    // Logic to be executed when the button is pressed
    print('Register button pressed!');

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => regester()));

    // Navigator.push(context,MaterialPageRoute(builder:(context) => Profile()));
    //Navigator.pop(context,MaterialPageRoute(builder: (context)=> Profile()));
    // You can add more logic here, like navigation, API calls, etc.
  }

  void _handlePopupMenuItem() {
    print('Go to the profile');
    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 131, 131, 133),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: PopupMenuButton<String>(
            icon: const Icon(Icons.menu), // Display menu icon
            onSelected: _handleMenuItemClick,
            itemBuilder: (BuildContext context) {
              return menuItems.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
          actions: [
            IconButton(onPressed: () => {}, icon: Icon(Icons.refresh)),
            IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert)),
          ],
          title: const Text('OpenMRS',
              style: TextStyle(color: const Color.fromRGBO(76, 175, 80, 1))),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(),
                child: Center(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/IMG_20230228_144812_501.jpg',
                      height: 300,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    //  border: Border( color: Colors.white,
                    color: Color.fromARGB(231, 248, 248, 248),
                  ),
                  // ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
                  margin: const EdgeInsets.all(10),
                  // color: Color.fromARGB(231, 248, 248, 248),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: InkWell(
                          child: const Text(
                            'Demograph',
                            style: TextStyle(
                                color: Color.fromRGBO(90, 224, 95, 1),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                          onTap: () {
                            print("hello world");
                          },
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextField(
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(18.0)),
                                    borderSide: BorderSide(
                                        color: Colors.green, width: 4.0)),
                                hintText: 'Enter your first Name',
                                labelText: ' Frist Name',
                                labelStyle: TextStyle(
                                    fontSize: 15, color: Colors.blueAccent),
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 15),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(left: 5, right: 2.5),
                                  child: Icon(Icons.person,
                                      color: Colors.blueAccent, size: 20),
                                )),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17))),
                                hintText: 'Enter your middle name',
                                labelStyle:
                                    TextStyle(fontSize: 15, color: Colors.blue),
                                labelText: 'Middle Name',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 15)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                ),
                                hintText: 'Enter  your last name',
                                labelStyle:
                                    TextStyle(fontSize: 15, color: Colors.blue),
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                                labelText: 'last Name',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 8)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(18),
                                  ),
                                ),
                                hintText: 'DOB DD/MM/YYY',
                                labelStyle:
                                    TextStyle(fontSize: 15, color: Colors.blue),
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                                labelText: 'Year',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 8)),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18))),
                              hintText: 'Estimated year',
                              labelStyle:
                                  TextStyle(fontSize: 15, color: Colors.blue),
                              labelText: 'Estimate Year',

                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 18),

                              //   style: TextStyle(
                              //    color: Color.fromARGB(232, 251, 248, 255))),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                //height: 280,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                // color: Color.fromARGB(231, 248, 248, 248),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'contact information',
                      style: TextStyle(
                          color: Color.fromRGBO(90, 224, 95, 1),
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Contact Number',
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                          hintText: 'Adress ',
                          labelText: 'Adress'),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                              ),
                              hintText: 'Country',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(18)),
                              ),
                              hintText: 'State',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _handleButtonPress,
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.red, // Text color
                        fontSize: 20, height: 1.5, // Font size
                      ),
                      textAlign: TextAlign.center,
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 15), // Padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20), // Button border radius
                      ),
                      //     elevation: 5, // Elevation
                      //     shadowColor: const Color.fromARGB(255, 230, 87, 87)
                      //         .withOpacity(0.2), // Shadow color
                    ),
                  ),
                  const SizedBox(height: 30),
                  //const Text('hello Arjan'),
                ],
              ),
            ],
          ),
        ));
  }
}

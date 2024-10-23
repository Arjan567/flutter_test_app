import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_app/pages/profile_page.dart';
//import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  final _isHovered = false;

  String name = "";

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _pswController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _fireStoreDb = FirebaseFirestore.instance;

  Future<void> _signUp(
      {required String email,
      required String password,
      required String name,
      required String phoneNum}) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = credential.user;

      if (user != null && user.uid.isNotEmpty) {
        _fireStoreDb.collection('users').doc().set({
          'email': email,
          'name': name,
          'phoneNumber': phoneNum,
          'uid': user.uid,
        });
      }
    } on FirebaseAuthException catch (e) {
      debugPrint('Hello Error: ${e}');
      throw Error();
    }
  }

  bool _throwShotAway = true;
  String _radioValue = 'male';
  String _radioGroupValue = 'Male';

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        //backgroundColor: const Color.fromARGB(184, 204, 199, 199),

        appBar: AppBar(
          backgroundColor: Color.fromRGBO(144, 100, 210, 0.957),
          centerTitle: true,
          // ignore: prefer_const_constructors
          title: Card (
             shadowColor: Colors.blue,
                        elevation: 30,
                        // child: Padding(
                        //   padding: const EdgeInsets.all(5.0),
            
            child: Text('Sign In',style: TextStyle(fontSize: 30),)),
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              // width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  opacity: 3.3,

                  image:
                      AssetImage("assets/images/image.png"), // Your image path
                  fit: BoxFit.cover,
                  // Fits the image into the container
                ),
              ),
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(vertical: 23, horizontal: 9),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset(
                      //   'assets/images/image.png',
                      //   height: 400,
                      //   width: 400,
                      //   scale: 300,
                      //   fit: BoxFit.cover,
                      // ),
                      const SizedBox(
                        height: 23,
                      ),
                      Card(
                        shadowColor: Colors.blue,
                        elevation: 30,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: const Text(
                            'नमस्ते, स्वागत छ! ',
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shadowColor: Colors.blue,
                        elevation: 30,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 13, horizontal: 15),
                          child: const Text(
                            'Welcome!',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      TextFormField(
                          controller: _nameController,
                          // readOnly: false,
                          autocorrect: true,
                          autofocus: true,
                          decoration:
                              InputDecoration(labelText: "enter your name"),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[a-z A-z]+$').hasMatch(value)) {
                              return 'Please enter your correct name';
                            } else {
                              return null;
                            }
                          }),
                      const SizedBox(
                        height: 18,
                      ),
                      TextFormField(
                          controller: _phoneController,
                          decoration:
                              InputDecoration(labelText: "enter your number"),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^\+?(\d{9}|\(\d{3}\) \d{4})[-\s./]?(\d{1,4})?$')
                                    .hasMatch(value)) {
                              return 'Please correct your number';
                            } else {
                              return null;
                            }
                          }),
                      const SizedBox(
                        height: 14,
                      ),
                      TextFormField(
                          controller: _emailController,
                          decoration:
                              InputDecoration(labelText: "enter your email"),
                          validator: (value) {
                            // a.aaba@aala_a.com
                            if (value!.isEmpty ||
                                !RegExp(r'^[\w-\.]+@([\w-]+\.)+[a-zA-Z]{2,}$')
                                    .hasMatch(value)) {
                              return 'Please correct your email';
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 16,
                      ),
                      TextFormField(
                          controller: _pswController,
                          decoration:
                              InputDecoration(labelText: "enter your password"),
                          validator: (value) {
                            // a.aaba@aala_a.com
                            if (value!.isEmpty ||
                                !RegExp(r'^[\w-\.]+@([\w-]+)+[a-zA-Z]{2,}$')
                                    .hasMatch(value)) {
                              return 'Please correct your corret password';
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 14,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                _isHovered ? Colors.blue : Colors.grey),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              await _signUp(
                                email: _emailController.text.trim(),
                                password: _pswController.text.trim(),
                                name: _nameController.text.trim(),
                                phoneNum: _phoneController.text.trim(),
                              );
                            }
                            // setState(() {});

                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => ProfilePage()));
                          },
                          child: Text('click me ',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center)),
                      Wrap(
                        //there have Row it's wraping by wrap
                        children: [
                          Checkbox(
                            value: _throwShotAway,
                            onChanged: (bool? newValue) {
                              setState(() {
                                _throwShotAway = newValue!;
                              });
                            },
                          ),
                          Radio<String>(
                            value: 'male',
                            groupValue: _radioGroupValue,
                            onChanged: (newValue) {
                              setState(() {
                                _radioGroupValue = newValue ?? '';
                              });
                            },
                          ),
                          const Text(
                            'male',
                            style: TextStyle(fontSize: 23),
                          ),
                          Radio<String>(
                            value: 'female',
                            groupValue: _radioGroupValue,
                            onChanged: (newValue) {
                              setState(() {
                                _radioGroupValue = newValue ?? 'female';
                                // const string ='female';
                              });
                            },
                          ),
                          const Text(
                            'female',
                            style: TextStyle(fontSize: 23),
                          ),
                          Radio<String>(
                              value: 'other',
                              groupValue: _radioGroupValue,
                              onChanged: (newValue) {
                                setState(() {
                                  _radioGroupValue = newValue ?? 'other';
                                });
                              }),
                          const Text(
                            'other',
                            style: TextStyle(fontSize: 23),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
    return scaffold;
  }
}

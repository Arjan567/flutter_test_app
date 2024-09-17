import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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

  final _emailController = TextEditingController();
  final _pswController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future _signUp({required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(224, 138, 138, 0.792),
        appBar: AppBar(
          backgroundColor: Color(0xF4F1F128),
          centerTitle: true,
          title: const Text('Sign In'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 23,
                ),
                const Text(
                  'नमस्ते, स्वागत छ! ',
                  style: TextStyle(fontSize: 40),
                ),
                const Text(
                  'Welcome!',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 23,
                ),
                TextFormField(
                    decoration: InputDecoration(labelText: "enter your name"),
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
                    decoration: InputDecoration(labelText: "enter your number"),
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
                  height: 18,
                ),
                TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: "enter your email"),
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

                const SizedBox(
                  height: 18,
                ),

                TextFormField(
                  controller: _pswController,
                ),
                const SizedBox(
                  height: 56,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Text(
                    //   "sign up",
                    //   style: TextStyle(
                    //       fontSize: 22, color: Color.fromARGB(23, 23, 23, 23)),
                    // ),
                    // NeumorphicButton(
                    //   margin: EdgeInsets.only(top: 12),
                    //   onPressed: () {
                    //     if (_formKey.currentState!.validate()) {
                    //       // final SnackBar = SnackBar(content: Text('submit')),
                    //       print('valid');
                    //     } else {
                    //       print('invalid');
                    //     }
                    //   },
                    // ),

                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              _isHovered ? Colors.blue : Colors.grey),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            // _signUp(
                            //   email: _emailController.text,
                            //   password: _pswController.text,
                            // );

                            final fireStore = FirebaseFirestore.instance;

                            final userCollection =
                                fireStore.collection('users');

                            final user = {
                              'email': _emailController.text,
                              'password': _pswController.text,
                            };
                            await userCollection.doc().set(user);
                          }
                        },
                        child: const Text('click me ',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center)),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

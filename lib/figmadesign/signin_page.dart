import 'package:flutter/material.dart';
import 'package:test_app/views/widgets/custom_button.dart';
import 'package:test_app/views/widgets/custom_textFormField.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();
  final _phonenumberController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 110,
                ),
                const Text('Sign into your\nAccount',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontFamily: 'karla',
                    )),
                const SizedBox(height: 20),
                const Text(
                  'Log into your account',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'karla',
                  ),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Phone number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'karla',
                  ),
                ),
                const SizedBox(height: 10),
                CustomTextformfield(
                    title: " Phone number",
                    keyboardType: TextInputType.number,
                    controller: _phonenumberController,
                    hintText: 'Enter Y our Phone Number',
                    onPressed: () {
                      // ignore: unused_label
                      validator:
                      (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      };
                    }),

                const SizedBox(height: 25),
                const Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'karla',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextformfield(
                  title: "password",
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  hintText: 'Enter your Password',
                  isPasswordVisible: true,
                  onPressed: () {},
                ),
                // textInputAction: TextInputAction.next,
                // obscureText: true,
                // validator: (value) {
                //   if (value!.trim().isEmpty) {
                //     return 'Please enter your password';
                //   }
                //   return null;
                // },
                // decoration: InputDecoration(
                //   hintText: "*******",
                //   // labelText: '****',
                //   border: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   enabledBorder: OutlineInputBorder(
                //     borderSide: const BorderSide(
                //       color: Colors.grey, // Color when not focused
                //       width: 1.0,
                //     ),
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   focusedBorder: OutlineInputBorder(
                //     borderSide: const BorderSide(
                //       color: Colors.grey, // Color when focused
                //       width: 2.0,
                //     ),
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   errorBorder: OutlineInputBorder(
                //     borderSide: const BorderSide(
                //       color: Colors.red, // Color when error
                //       width: 2.0,
                //     ),
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   filled: true,
                //   fillColor: const Color.fromRGBO(153, 153, 153, 0.1),
                // ),

                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Have you forgotten your Password?,',
                  style: TextStyle(
                    fontFamily: 'karla',
                  ),
                ),
                const Text(
                  'Click here to recover it',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: 'karla',
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Align(
                  alignment: Alignment.center,
                  //   child: ElevatedButton(
                  //     child: const Text(
                  //       'SIGN IN',
                  //       style: TextStyle(
                  //         fontSize: 18,
                  //         fontFamily: 'karla',
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //       selectionColor: Color.fromRGBO(255, 255, 255, 1),
                  //       textAlign: TextAlign.end,
                  //     ),
                  //     onPressed: () {
                  //       debugPrint('go to another signup page');
                  //       if (_formKey.currentState!.validate()) {}
                  //       // Navigator.push(
                  //       //   context,
                  //       //   MaterialPageRoute(builder: (context) => SignIn()),
                  //       // );
                  //     },
                  //   ),
                  child: CustomButton(
                    titleColor: Colors.white,
                    title: "SIGN IN",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // there we add another page
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Do you not have an account? ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign up here',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            // fontFamily: 'karla',
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

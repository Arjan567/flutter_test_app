import 'package:flutter/material.dart';
import 'package:test_app/figmadesign/OTP_verify.dart';
import 'package:test_app/views/widgets/custom_button.dart';
import 'package:test_app/views/widgets/custom_textFormField.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text('Create Account',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      // fontFamily: 'Poppins',
                    )),
                const SizedBox(height: 15),
                const Text(
                  'Open an account with a few details',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Full name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    // fontFamily: 'karla',
                  ),
                ),
                const SizedBox(height: 10),
                CustomTextformfield(
                    title: 'name',
                    controller: _fullNameController,
                    hintText: 'Please Enter Your Name',
                    keyboardType: TextInputType.text,
                    onPressed: () {}),
                const SizedBox(height: 20),
                const Text(
                  'Phone number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextformfield(
                  title: 'number',
                  hintText: 'Please Enter Number ',
                  controller: _phoneController,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    //fontFamily: 'karla',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextformfield(
                  title: "password",
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  hintText: 'Enter the Password',
                  isPasswordVisible: true,
                  //suffixIcon: const Icon(Icons.visibility),

                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Repeat password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    //  fontFamily: 'karla',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextformfield(
                  title: "repeat Password",
                  controller: _repeatPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  hintText: 'Please Conform Your Password',
                  suffixIcon: Icon(Icons.visibility),
                  isPasswordVisible: true,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                      title: "CREATE YOUR ACCOUNT",
                      titleColor: Colors.white,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OtpVerify()),
                          );
                        }
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Do you already have an account? ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'karla',
                        ),
                      ),
                      TextSpan(
                        text: 'Sign up here',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'karla',
                        ),
                      ),
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

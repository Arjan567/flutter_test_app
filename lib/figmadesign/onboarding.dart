import 'package:flutter/material.dart';
import 'package:test_app/figmadesign/sign_up.dart';
import 'package:test_app/figmadesign/signin_page.dart';
import 'package:test_app/views/widgets/custom_button.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
              ),
              Image.asset('assets/jpg/logo_screen 1.jpg'),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Welcome to Myagdi Remit",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.start,
                overflow: TextOverflow.visible,
                maxLines: null,
              ),
              const SizedBox(
                height: 150,
              ),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  title: 'CREATE YOUR ACCOUNT',
                  titleColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Padding(
              //   padding: const EdgeInsets.all(20.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       border: Border.all(
              //         color: Colors.red,
              //       ),
              //     ),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  title: 'LOG INTO YOUR ACCOUNT',
                  backgroundColor: WidgetStateProperty.all(Colors.white),
                  titleColor: Colors.red,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SigninPage()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

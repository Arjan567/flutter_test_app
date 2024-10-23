import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'package:test_app/figmadesign/verify_email.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({super.key});

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  String enteredPin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 150),

              // Title and description
              const Text(
                'Verify number',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  fontFamily: 'karla',
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "please enter the CODE sent to your phone number\nin the boxes below.",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'karla',
                ),
                textAlign: TextAlign.start,
                overflow: TextOverflow.visible,
                maxLines: null,
              ),
              const SizedBox(height: 70),

              // Pinput widget for OTP input
              Center(
                child: Pinput(
                  length: 4,
                  controller: pinController,
                  focusNode: focusNode,
                  onCompleted: (pin) {
                    setState(() {
                      enteredPin = pin;
                      debugPrint('Entered PIN is: $enteredPin');
                    });
                  },
                  defaultPinTheme: PinTheme(
                    width: 50,
                    height: 50,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    width: 60,
                    height: 60,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  submittedPinTheme: PinTheme(
                    width: 60,
                    height: 60,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 350),

              // Button to verify the entered OTP
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  // style: ElevatedButton.styleFrom(
                  //   minimumSize: const Size(350, 50),
                  //   elevation: 8,
                  //   backgroundColor: Colors.red,
                  //   foregroundColor: Colors.white,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(5),
                  //   ),
                  // ),
                  child: const Text(
                    'VERIFY PHONE',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'karla',
                    ),
                  ),
                  onPressed: () {
                    if (enteredPin.isNotEmpty) {
                      debugPrint('Verifying PIN: $enteredPin');
                      //    Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => VerifyEmail()),
                      // );
                      //         Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(builder: (context) =>SignUp ()),
                      // );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VerifyEmail()),
                      );

                      // Add your verification logic here
                    } else {
                      debugPrint('Please enter the OTP');
                    }
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

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:test_app/figmadesign/onboard.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Onboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          //  child:SvgPicture.asset(assets/svg/logo_screen.svg),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('assets/jpg/logo_screen 1.jpg'),
            //SvgPicture.asset('assets/svg/logo_screen.svg'),
            //SvgPicture.asset('assets/svg/Screenshot 2024-10-01 140947.png'),
          ]),
        ),
      ),
    );
  }
}

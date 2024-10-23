import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/themes/themes.dart';
import 'package:test_app/figmadesign/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter test',
      theme: AppTheme.lightTheme,
      home: const Splash(),
    );
  }
}
    //home: const ProfilePage(),
  
    // );
  

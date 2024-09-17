import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_app/pages/phoneauth.dart'; 
//import 'package:test_app/pages/my_home_page.dart';
import 'package:test_app/pages/regester.dart';
import 'package:test_app/pages/profile_page.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';


// import 'package:image_picker/image_picker.dart';

 import 'dart:io';
// import 'package:path_provider/path_provider.dart'; // For getting the local storage path
// import 'package:path/path.dart'; // For manipulating paths

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
      title: 'Flutter test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      home: const ProfilePage(),
    );
//home:const MyHomePage(),
  // home:const regester()
  //   );
  // home: const Phoneauth(),
  // );

  }
}

















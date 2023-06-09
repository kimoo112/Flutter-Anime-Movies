// ignore_for_file: prefer_const_constructors, unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:naruto/Fire%20And%20Auth/authfire.dart';
import 'package:naruto/Screens/Home.dart';
import 'package:naruto/Screens/Login/Login.dart';
import 'package:naruto/Screens/Login/Signin.dart';
import 'package:naruto/Screens/Login/signup.dart';
import 'Screens/Thebase.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();  runApp(const NarutoApp()); }
void main() async {
  runApp(NarutoApp());

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class NarutoApp extends StatelessWidget {
   NarutoApp({super.key});
  bool isDarkMode = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Naruto App',
      theme: ThemeData(
          fontFamily: 'Poppins',
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              letterSpacing: 1,
            ),
          )),
      home: LoginScreen(),
      
    );
  }
}


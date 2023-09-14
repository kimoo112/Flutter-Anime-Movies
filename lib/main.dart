// ignore_for_file: prefer_const_constructors, unused_import, must_be_immutable

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:naruto/Fire%20And%20Auth/authfire.dart';
import 'package:naruto/Screens/Home.dart';
import 'package:naruto/Screens/Login/Login.dart';
import 'package:naruto/Screens/Login/Signin.dart';
import 'package:naruto/Screens/Login/signup.dart';
import 'Screens/Thebase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(NarutoApp());
}
class NarutoApp extends StatelessWidget {
  const NarutoApp({super.key});
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


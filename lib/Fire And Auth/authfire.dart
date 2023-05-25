// ignore_for_file: prefer_const_constructors, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:naruto/widgets/SplashNaruto.dart';
import '../Screens/Home.dart';
import '../Screens/Login/Login.dart';
class AuthFire extends StatelessWidget {
  const AuthFire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SplashNaruto();
        } else {
          return LoginScreen();
        }
      },
    ));
  }
}

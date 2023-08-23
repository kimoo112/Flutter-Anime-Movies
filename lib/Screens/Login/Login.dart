// ignore_for_file: prefer_const_constructors, file_names, unused_import, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, duplicate_ignore, non_constant_identifier_names

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:naruto/Screens/Login/signup.dart';
import '../../Background/aniBc.dart';
import '../../Constant/colors.dart';
import 'Signin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final KHeight = MediaQuery.of(context).size.height;
    final KWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 22, 22),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Container(
                width: KWidth,
                height: KHeight,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/welcome_background.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(0, 2, 2, 0),
                              Color.fromARGB(255, 15, 16, 19),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                    ))),
          ),
          Container(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 450,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "NARUTO ",
                        style: TextStyle(
                            fontSize: 40,
                            color: cwhite,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "MOVIES ",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: cyellow,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 30,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 213, 79)),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
  context,
  PageRouteBuilder(
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
      return  FadeTransition(
  opacity: animation,
  child: child,
);
    },
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
      return  SignInScreen();
                            },
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.login,
                        size: 18,
                        color: Colors.black,
                      ),
                      label: Text(
                        "SIGN IN",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 200,
                    height: 30,
                    child: ElevatedButton.icon(
                      // ignore: prefer_const_constructors
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFF44336)),
                      ),

                      onPressed: () {
                         Navigator.pushReplacement(
  context,
  PageRouteBuilder(
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
      return  FadeTransition(
  opacity: animation,
  child: child,
);
    },
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
      return  SignUpScreen();
                            },
                          ),
                        );
                      },
                      icon: Icon(Icons.start_outlined, size: 18),
                      label: Text("SIGN UP"),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ]),
          ),
        ],
      ),
    );
  }
}

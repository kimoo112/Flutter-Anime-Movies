// ignore_for_file: prefer_const_constructors, unused_import, file_names, sized_box_for_whitespace, non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:naruto/Screens/Login/signup.dart';

import '../../Background/aniBc.dart';
import '../../Constant/colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future Ksignin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 22, 22),
      body: Stack(
        children: [
          AnimatingBg5(),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    child: Image.asset("assets/images/Naruto2.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "SIGN IN",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    // color: Colors.black,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black45),
                    child: TextField(
                      cursorColor: cyellowww,
                      controller: _emailController,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white38),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: cyellowww,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    // color: Colors.black,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black45),
                    child: TextField(
                      cursorColor: cyellowww,
                      controller: _passwordController,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white38),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: cyellowww,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Ksignin();

                    },
                    child: Container(
                      width: 300,
                      height: 50,
                      // ignore: sort_child_properties_last
                      child: Center(
                          child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFFFD54F)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("IF You Don't Have An Account ?",
                          style:
                              TextStyle(color: Colors.white54, fontSize: 12)),
                      TextButton(
                          onPressed: () {
                            //Navigate Kimo To a Sign Up Screen
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => SignUpScreen()));
                          },
                          child: Text("Sign Up",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13)))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

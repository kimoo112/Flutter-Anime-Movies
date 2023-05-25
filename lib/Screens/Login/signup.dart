// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import, sort_child_properties_last


import 'package:flutter/material.dart';
import 'package:splash_view/splash_view.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import '../../Background/aniBc.dart';
import '../../Constant/colors.dart';
import '../../widgets/SplashNaruto.dart';
import 'Signin.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 22, 22),
      body: Stack(
        children: [
          AnimatingBg4(),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Container(
                    width: 300,
                    height: 300,
                    child: Image.asset("assets/images/Naruto.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "SIGN UP",
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
                                                    cursorColor: credd,

                      style: TextStyle(
                        color: Colors.white,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white38),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color(0xFFF44336),
                          ),
                          border: InputBorder.none),
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
                                                    cursorColor: credd,

                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textInputAction: TextInputAction.next,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white38),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: credd,
                          ),
                          border: InputBorder.none),
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
                                                    cursorColor: credd,

                      style: TextStyle(
                        color: Colors.white,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(color: Colors.white38),
                          prefixIcon: Icon(
                            Icons.lock_clock_outlined,
                            color: credd,
                          ),
                          // suffixIcon: IconButton(
                          //     onPressed: () {
                          //       // ignore: unused_label
                          //       obscureText:
                          //       false;
                          //     },
                          //     icon: Icon(Icons.remove_red_eye_sharp)),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                   GestureDetector(
                    onTap: () =>   Navigator.push(context,
                                MaterialPageRoute(builder: (_) => SplashNaruto())),
                     child: Container(
                       width: 300,
                      height: 50,
                      child:
                      Center(child: Text("SIGN UP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: .7),)) ,
                      decoration: BoxDecoration( borderRadius: BorderRadius.circular(15),
                          color:  credd),
                     ),
                   ),
                    SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("IF You Already Have An Account ?",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 12
                          )),
                      TextButton(
                          onPressed: () {
                            //Navigate Kimo To a Sign Up Screen
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (_) => SignInScreen()));
                          },
                          child: Text("Sign In",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13
                              )))
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

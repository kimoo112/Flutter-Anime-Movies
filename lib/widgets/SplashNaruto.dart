// ignore_for_file: unused_import, file_names, unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';
import 'package:splash_view/source/presentation/presentation.dart';

import '../../Constant/colors.dart';
import '../Screens/Thebase.dart';

class SplashNaruto extends StatelessWidget {
  const SplashNaruto({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashView(

       gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[cblack2,cdark]),
  
        logo: Image.asset("assets/images/NarutoS.gif",width: 520,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            
            Text("WELCOME T",style: TextStyle(color: cyelloww,fontSize: 15,fontWeight: FontWeight.bold),),
            Text("O NARUT",style: TextStyle(color: cyellow,fontSize: 15,fontWeight: FontWeight.bold),),
            Text("O MOVIES",style: TextStyle(color: corange,fontSize: 15,fontWeight: FontWeight.bold),),
          ],
        ),
        done: Done(TheBase(),
        
        animationDuration: Duration(milliseconds: 50),
        ),
    );
  }
}
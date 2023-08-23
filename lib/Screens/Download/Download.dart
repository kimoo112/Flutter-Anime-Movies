// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../../Constant/colors.dart';
class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cblack2,
      appBar: AppBar(
        title: Text(
          "DOWLOAD",
          style: TextStyle(color: corange),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: (Icon(Icons.arrow_back, color: corange))),
        backgroundColor: cdark,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoadingAnimationWidget.inkDrop(color: corange, size: 100),
            SizedBox(height: 100,),
AnimatedTextKit(animatedTexts: [
             WavyAnimatedText("DOWNLOADiNG...",textStyle: TextStyle(color: corange,fontSize: 22,letterSpacing: 3),
             speed: Duration(milliseconds: 300)
             ),
             

],
isRepeatingAnimation: true,
repeatForever:true
)
          ],
        ),
      ),
    );
  }
}

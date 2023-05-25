// ignore_for_file: file_names, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';

import '../../Constant/colors.dart';

class AnimatingBg1 extends StatefulWidget {
  @override
  _AnimatingBg1State createState() => _AnimatingBg1State();
}

class _AnimatingBg1State extends State<AnimatingBg1>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    corange,
    Color.fromARGB(255, 255, 255, 255),
    Color.fromARGB(255, 230, 229, 229),
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = Color.fromARGB(255, 243, 243, 243);
  Color topColor = Color.fromARGB(255, 201, 201, 201);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = Color(0xff33267C);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}

class AnimatingBg2 extends StatefulWidget {
  @override
  _AnimatingBg2State createState() => _AnimatingBg2State();
}

class _AnimatingBg2State extends State<AnimatingBg2>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    Color.fromARGB(255, 1, 9, 54),
    Color.fromARGB(255, 117, 13, 117),
    Color.fromARGB(255, 64, 3, 44),
    Color.fromARGB(255, 59, 3, 64),
    Color.fromARGB(255, 7, 3, 64),
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = Color(0xff092646);
  Color topColor = Color(0xff410D75);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = Color(0xff33267C);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}

class AnimatingBg3 extends StatefulWidget {
  @override
  _AnimatingBg3State createState() => _AnimatingBg3State();
}

class _AnimatingBg3State extends State<AnimatingBg3>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    Color.fromARGB(255, 222, 222, 223),
    Color.fromARGB(255, 171, 170, 175),
    Color.fromARGB(255, 156, 160, 175),
    

    Color.fromARGB(255, 14, 2, 73),
    Color.fromARGB(255, 114, 114, 116),
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor = Color(0xff092646);
  Color topColor = Color.fromARGB(255, 222, 222, 223);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = Color.fromARGB(255, 8, 1, 43);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}

class AnimatingBg4 extends StatefulWidget {
  @override
  _AnimatingBg4State createState() => _AnimatingBg4State();
}

class _AnimatingBg4State extends State<AnimatingBg4>
    with TickerProviderStateMixin {
  List<Color> colorList = [
   Color.fromARGB(255, 32, 32, 32),
    Color.fromARGB(255, 8, 5, 24),
   
    Color.fromARGB(255, 175, 9, 9),
    Color.fromARGB(255, 211, 121, 3),
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor =    Color.fromARGB(255, 32, 32, 32)
;
  Color topColor = Color.fromARGB(255, 21, 20, 22);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = Color.fromARGB(255, 8, 1, 43);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}

class AnimatingBg5 extends StatefulWidget {
  @override
  _AnimatingBg5State createState() => _AnimatingBg5State();
}

class _AnimatingBg5State extends State<AnimatingBg5>
    with TickerProviderStateMixin {
  List<Color> colorList = [
    Color.fromARGB(255, 32, 30, 30),
    Color.fromARGB(255, 15, 14, 14),
             Color.fromARGB(255, 22, 20, 20),
          Color.fromARGB(250, 245, 160, 3),
   
    
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor =    Color.fromARGB(255, 32, 30, 30)
;
  Color topColor = Color.fromARGB(255, 252, 164, 0);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = Color.fromARGB(255, 8, 1, 43);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}

class AnimatingBg6 extends StatefulWidget {
  @override
  _AnimatingBg6State createState() => _AnimatingBg6State();
}

class _AnimatingBg6State extends State<AnimatingBg6>
    with TickerProviderStateMixin {
  List<Color> colorList = [
   corangeee,
   cblack,
   cdark,
   
   cblack2,
   
    
  ];
  List<Alignment> alignmentList = [Alignment.topCenter, Alignment.bottomCenter];
  int index = 0;
  Color bottomColor =  cdark;
  Color topColor =Color.fromARGB(255, 32, 30, 30);
  Alignment begin = Alignment.bottomCenter;
  Alignment end = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(microseconds: 0),
      () {
        setState(
          () {
            bottomColor = Color.fromARGB(255, 8, 1, 43);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      onEnd: () {
        setState(
          () {
            index = index + 1;
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];
          },
        );
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}


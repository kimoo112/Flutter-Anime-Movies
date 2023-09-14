// ignore_for_file: unnecessary_import, prefer_typing_uninitialized_variables, non_constant_identifier_names, duplicate_ignore, prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../Constant/colors.dart';

class MoviesContainer extends StatelessWidget {
  // ignore: non_constant_identifier_names
  MoviesContainer(
      {super.key, required this.Kmovie, required this.Kroute, this.Kname = ""});
  final Kmovie;
  final Kroute;
  final Kname;

  @override
  Widget build(BuildContext context) {
    final KWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Kroute));
        },
        child: FutureBuilder(
            future: precacheImage(NetworkImage(Kmovie), context),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Container(
                  width: 200,
                  margin: EdgeInsets.only(right: 20, left: 5),
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(31, 14, 12, 5),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: LoadingAnimationWidget.threeArchedCircle(color: corange, size: 55)
                  ),
                );
              } else {
                return Container(
                    width: 200,
                    margin: EdgeInsets.only(right: 20, left: 5),
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        
                        image: NetworkImage(Kmovie,),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(55),
                      boxShadow: [
                        BoxShadow(
                          color: cblack2.withOpacity(.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(5, 1),
                        )
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          width: KWidth,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(68, 2, 2, 0),
                                  Color.fromARGB(249, 14, 12, 5),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                Kname,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: cwhitee, letterSpacing: .5),
                              ),
                              SizedBox(
                                height: 7,
                              )
                            ],
                          )),
                    ));
              }
            }));
  }
}

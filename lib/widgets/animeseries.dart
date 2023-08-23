// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:naruto/widgets/stars.dart';

import '../../Constant/colors.dart';

class AnimeSeriesContaier extends StatelessWidget {
  const AnimeSeriesContaier({
    super.key,
   required this.KImage ,
    required this.KMovie ,
    required this.KEpisodes ,
    required this.KStar5 ,
    required this.KStar4 ,
    required this.Kroute,
  });
  final KImage;
  final KMovie;
  final KEpisodes;
  final IconData KStar5;
  final IconData KStar4;
  final Kroute;

  @override
  Widget build(BuildContext context) {
    final KWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Kroute)),
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(KImage, errorBuilder:
                          (BuildContext context, Object exception,
                              StackTrace? stackTrace) {
                        return Stack(children: [
                          LoadingAnimationWidget.dotsTriangle(
                              color: corange, size: 50),
                        ]);
                      })),
                ),
              ),
              SizedBox(
                width: KWidth * .08,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  children: [
                    Text(
                      "$KMovie ",
                      style: TextStyle(color: cwhite, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Episodes $KEpisodes",
                  style:
                      TextStyle(color: corange.withOpacity(.8), fontSize: 12),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Stars5(
                      KStar4: KStar4,
                      KStar5: KStar5,
                    ),
                  ],
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}

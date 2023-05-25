// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../Constant/colors.dart';

class TrendingMoviesContainer extends StatelessWidget {
  const TrendingMoviesContainer(
      {super.key,
      required this.Kmovie,
      required this.KmovieDes,
      required this.Kposter,
      this.KTroute = ""});
  final Kmovie;
  final KmovieDes;
  final Kposter;
  final KTroute;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => KTroute));
        },
        child: Container(
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  corange,
                  corange,
                  corangee,
                  corangee,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Kmovie,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: cblack),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        KmovieDes,
                        style: TextStyle(
                            fontSize: 10, color: cblack2.withOpacity(.75)),
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(9),
                        bottomRight: Radius.circular(9)),
                    child: Image.network(Kposter, errorBuilder:
                        (BuildContext context, Object exception,
                            StackTrace? stackTrace) {
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Stack(children: [
                          LoadingAnimationWidget.staggeredDotsWave(
                              color: cblack2, size: 33),
                        ]),
                      );
                    })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

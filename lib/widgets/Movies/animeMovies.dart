// ignore_for_file: file_names, unnecessary_import, implementation_imports, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Screens/Details.dart';
import '../movies.dart';

class AnimeMovies extends StatelessWidget {
  const AnimeMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                                                    Kimage: "https://i.pinimg.com/736x/50/8b/85/508b85b14b0ae9bc52111a8e8a8e93e8.jpg",

                                  Ktitle: "IZUKU MIDORIYA",
                                ),
                                Kname: "IZUKU MIDORIYA",
                                Kmovie:
                                    "https://i.pinimg.com/736x/42/50/25/425025980cc194671ad1b887b7abd060.jpg",
                              ),
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                                                    Kimage: "https://i.pinimg.com/736x/43/fc/48/43fc489f929285f050fd8926a4d1c5ab.jpg",

                                  Ktitle: "DEKU",
                                ),
                                Kname: "DEKU",
                                Kmovie:
                                    "https://th.bing.com/th/id/OIP.EcKA_xG4_qDupoO9djzGPwHaLc?pid=ImgDet&rs=1",
                              ),
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                                                    Kimage: "https://i.pinimg.com/originals/88/05/d3/8805d3910adb8714b2d0bf71374a1145.jpg",

                                  Ktitle: "PATEMA INVERTED",
                                ),
                                Kname: "PATEMA INVERTED",
                                Kmovie:
                                    "https://66.media.tumblr.com/ac4570e4a8c50b2d93b2c1c087df74a1/tumblr_ocaqpuiwaI1vwjbc4o1_1280.jpg",
                              ),
                            ],
                          ),
                        );
  }
}
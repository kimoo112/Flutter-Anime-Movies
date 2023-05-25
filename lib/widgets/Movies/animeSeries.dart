// ignore_for_file: file_names, unnecessary_import, implementation_imports, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Screens/Details.dart';
import '../movies.dart';

class AnimeSeries extends StatelessWidget {
  const AnimeSeries({super.key});

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
                                  Kimage: "https://th.bing.com/th/id/R.dc50bffeab42fedf193c031b7844bca3?rik=y%2fjC8qwPS%2fae%2bQ&pid=ImgRaw&r=0",
                                  Ktitle: "Naruto Clover",
                                ),
                                Kname: "        Naruto \nFour-leaf Clover",
                                Kmovie:
                                    "https://cdn.anime-planet.com/anime/primary/naruto-special-1-find-the-crimson-four-leaf-clover-1.jpg?t=1625766861",
                              ),
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                  Kimage:
                                      "https://th.bing.com/th/id/R.2cdf3e39ba0c6dafa8fe702a36a4f463?rik=lGYMMiU3hq%2f5Nw&pid=ImgRaw&r=0",
                                  Ktitle: "Attack on Titan",
                                ),
                                Kname: "Attack on Titan",
                                Kmovie:
                                    "https://cdn.anime-planet.com/anime/primary/attack-on-titan-the-final-season-part-ii-1.webp?t=1640076824",
                              ),
                              MoviesContainer(
                                Kroute: DetailsScreen(
                                  Ktitle: "Demon Slayer",
                                  Kimage: "https://th.bing.com/th/id/OIP.aqTkS54oY7gTaQVuX9OpsAHaNK?pid=ImgDet&rs=1",
                                ),
                                Kname: "Demon Slayer",
                                Kmovie:
                                    "https://cdn.anime-planet.com/anime/primary/demon-slayer-kimetsu-no-yaiba-movie-mugen-train-1.jpg?t=1625788462",
                              ),
                            ],
                          ),
                        );
  }
}
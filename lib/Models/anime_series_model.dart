// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../Screens/Details.dart';

class AnimeSeriesModel {
  final String KEpisodes;
  final String KImage;
  final String KMovie;
  final double KRating;
  final IconData KStar4;
  final IconData KStar5;
  final dynamic Kroute;

  AnimeSeriesModel(
      {required this.KEpisodes,
      required this.KImage,
      required this.KRating,
      required this.KMovie,
      required this.KStar4,
      required this.KStar5,
      required this.Kroute});
}

List<AnimeSeriesModel> animeSeriesList = [
  AnimeSeriesModel(
    KImage:
        "https://cdn.anime-planet.com/anime/primary/naruto-special-1-find-the-crimson-four-leaf-clover-1.jpg?t=1625766861",
    KEpisodes: "7",
    KMovie: "Naruto \nFour-leaf Clover",
    KStar4: Icons.star_border,
    KStar5: Icons.star_border,
    Kroute: DetailsScreen(
      KRating: 5.0,
      Kimage:
          "https://th.bing.com/th/id/R.dc50bffeab42fedf193c031b7844bca3?rik=y%2fjC8qwPS%2fae%2bQ&pid=ImgRaw&r=0",
      Ktitle: "Naruto Clover",
    ),
    KRating: 5.0,
  ),
  AnimeSeriesModel(
    KImage:
        "https://cdn.anime-planet.com/anime/primary/attack-on-titan-the-final-season-part-ii-1.webp?t=1640076824",
    KEpisodes: "12",
    KMovie: "Attack on Titan",
    KStar4: Icons.star,
    KStar5: Icons.star,
    Kroute: DetailsScreen(
      Ktitle: "Attack on Titan",
      KRating: 5.0,
      Kimage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR711pqln2u2lcphMZ2i3-MDvjzEB0ow3aSbJmFOU3xbf6mZMbQOytcPkuQjf5BjETRETk&usqp=CAU",
    ),
    KRating: 5.0,
  ),
  AnimeSeriesModel(
    KImage:
        "https://cdn.anime-planet.com/anime/primary/demon-slayer-kimetsu-no-yaiba-movie-mugen-train-1.jpg?t=1625788462",
    KEpisodes: "55",
    KMovie: "Demon Slayer",
    KStar4: Icons.star,
    KStar5: Icons.star_half,
    Kroute: DetailsScreen(
      Ktitle: "Demon Slayer",
      Kimage:
          "https://th.bing.com/th/id/OIP.aqTkS54oY7gTaQVuX9OpsAHaNK?pid=ImgDet&rs=1",
    ),
    KRating: 4.5,
  ),
  AnimeSeriesModel(
    KImage:
        "https://cdn.anime-planet.com/anime/primary/sword-of-the-stranger-1.jpg?t=1625767749  ",
    KEpisodes: "22",
    KMovie: "Sword of\nthe Stranger",
    KRating: 3.5,
    KStar4: Icons.star,
    KStar5: Icons.star_border,
    Kroute: DetailsScreen(
      KRating: 4.0,
      Kimage:
          "https://cdn.anime-planet.com/anime/primary/sword-of-the-stranger-1.jpg?t=1625767749  ",
      Ktitle: "Sword the Stranger",
    ),
  ),
  AnimeSeriesModel(
    KImage:
        "https://cdn.anime-planet.com/anime/primary/chainsaw-man-1.webp?t=1659090309",
    KEpisodes: "12",
    KMovie: "Chainsaw Man",
    KStar4: Icons.star,
    KStar5: Icons.star_half,
    Kroute: DetailsScreen(
      KRating: 3.0,
      Kimage:
          "https://cdn.anime-planet.com/anime/primary/chainsaw-man-1.webp?t=1659090309",
      Ktitle: "Chainsaw Man",
    ),
    KRating: 3.0,
  ),
  AnimeSeriesModel(
    KImage:
        "https://cdn.anime-planet.com/anime/primary/ninja-scroll-1.jpg?t=1625728745",
    KEpisodes: "7",
    KMovie: "Ninja Scroll",
    KStar4: Icons.star_half,
    KStar5: Icons.star_border,
    Kroute: DetailsScreen(
      KRating: 4.0,
      Kimage:
          "https://cdn.anime-planet.com/anime/primary/ninja-scroll-1.jpg?t=1625728745",
      Ktitle: "Ninja Scroll",
    ),
    KRating: 4.0,
  ),
  AnimeSeriesModel(
    KImage:
        "https://cdn.anime-planet.com/anime/primary/shigurui-death-frenzy-1.jpg?t=1625767072",
    KEpisodes: "11",
    KMovie: "Shigurui\nDeath Frenzy",
    KStar4: Icons.star_half,
    KStar5: Icons.star_border,
    Kroute: DetailsScreen(
      Kimage:
          "https://cdn.anime-planet.com/anime/primary/shigurui-death-frenzy-1.jpg?t=1625767072",
      Ktitle: "Death Frenz",
      KRating: 4.1,
    ),
    KRating: 4.0,
  ),
];

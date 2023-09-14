// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import '../Screens/Details.dart';

class AnimeMoviesModel {
  final kMovie;
  final kRoute;
  final kName;

  AnimeMoviesModel(
      {required this.kMovie, required this.kRoute, required this.kName});
}

List<AnimeMoviesModel> animeMoviesList = [
  AnimeMoviesModel(
    kName: "IZUKU MIDORIYA",
    kMovie:
        "https://i.pinimg.com/736x/42/50/25/425025980cc194671ad1b887b7abd060.jpg",
    kRoute: DetailsScreen(
      Ktitle: "IZUKU MIDORIYA",
      Kimage:
          "https://i.pinimg.com/736x/50/8b/85/508b85b14b0ae9bc52111a8e8a8e93e8.jpg",
    ),
  ),
  AnimeMoviesModel(
    kName: "DEKU",
    kMovie:
        "https://th.bing.com/th/id/OIP.EcKA_xG4_qDupoO9djzGPwHaLc?pid=ImgDet&rs=1",
    kRoute: DetailsScreen(
      Ktitle: "DEKU",
      Kimage:
          "https://i.pinimg.com/736x/43/fc/48/43fc489f929285f050fd8926a4d1c5ab.jpg",
    ),
  ),
  AnimeMoviesModel(
    kName: "Patema Invert",
    kMovie:
        "https://66.media.tumblr.com/ac4570e4a8c50b2d93b2c1c087df74a1/tumblr_ocaqpuiwaI1vwjbc4o1_1280.jpg",
    kRoute: DetailsScreen(
      Ktitle: "PATEMA INVERTED",
      Kimage:
          "https://i.pinimg.com/originals/88/05/d3/8805d3910adb8714b2d0bf71374a1145.jpg",
    ),
  ),
  AnimeMoviesModel(
    kName: "Jujutsu Kaisen",
    kMovie:
        "https://cdn.anime-planet.com/anime/primary/jujutsu-kaisen-1-190x286.jpg?t=1625907951",
    kRoute: DetailsScreen(
      Ktitle: "Jujutsu Kaisen",
      Kimage:
          "https://cdn.anime-planet.com/anime/primary/jujutsu-kaisen-1-190x286.jpg?t=1625907951",
    ),
  ),
  AnimeMoviesModel(
    kName: "Gintama",
    kMovie:
        "https://cdn.anime-planet.com/anime/primary/gintama-kanketsu-hen-yorozuya-yo-eien-nare-1.jpg?t=1625776143",
    kRoute: DetailsScreen(
      Ktitle: "Gintama",
      Kimage:
          "https://cdn.anime-planet.com/anime/primary/gintama-kanketsu-hen-yorozuya-yo-eien-nare-1.jpg?t=1625776143",
    ),
  ),
  AnimeMoviesModel(
    kName: "Given",
    kMovie:
        "https://cdn.anime-planet.com/anime/primary/given-1.jpg?t=1625762417",
    kRoute: DetailsScreen(
      Ktitle: "Given",
      Kimage:
          "https://cdn.anime-planet.com/anime/primary/given-1.jpg?t=1625762417",
    ),
  )
];

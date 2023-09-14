// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:naruto/Models/anime_series_model%20copy.dart';
import 'package:naruto/widgets/movies.dart';

import '../../Background/aniBc.dart';
import '../../Constant/colors.dart';

class AnimeMoviesScreen extends StatefulWidget {
  const AnimeMoviesScreen({super.key});

  @override
  State<AnimeMoviesScreen> createState() => _AnimeMoviesScreenState();
}

class _AnimeMoviesScreenState extends State<AnimeMoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: cblack2,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Anime Movies",
          style: TextStyle(),
        ),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: .5,
        surfaceTintColor: cred,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Stack(
        children: [
          AnimatingBg6(),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                GridView.builder(
                  itemCount: animeMoviesList.length,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 12
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return MoviesContainer(
                      Kmovie: animeMoviesList[index].kMovie,
                      Kroute: animeMoviesList[index].kRoute,
                      Kname: animeMoviesList[index].kName,
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

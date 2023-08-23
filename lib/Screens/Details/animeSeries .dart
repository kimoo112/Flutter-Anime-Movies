// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:naruto/Models/anime_series_model.dart';

import '../../Background/aniBc.dart';
import '../../Constant/colors.dart';
import '../../widgets/animeseries.dart';

class AnimeSeriesScreen extends StatefulWidget {
  const AnimeSeriesScreen({super.key});

  @override
  State<AnimeSeriesScreen> createState() => _AnimeSeriesScreenState();
}

class _AnimeSeriesScreenState extends State<AnimeSeriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: cblack2,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Anime Series",
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
          Container(
            width: double.infinity,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    itemCount: animeSeriesList.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return AnimeSeriesContaier(
                        KEpisodes: animeSeriesList[index].KEpisodes,
                        KImage: animeSeriesList[index].KImage,
                        KMovie: animeSeriesList[index].KMovie,
                        KStar4: animeSeriesList[index].KStar4,
                        KStar5: animeSeriesList[index].KStar5,
                        Kroute: animeSeriesList[index].Kroute,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

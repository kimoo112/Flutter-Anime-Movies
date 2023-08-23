// ignore_for_file: file_names, unnecessary_import, implementation_imports, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Models/anime_series_model.dart';
import '../../Screens/Details.dart';
import '../animeseries.dart';
import '../movies.dart';

class AnimeSeries extends StatelessWidget {
  const AnimeSeries({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return MoviesContainer(
            Kmovie: animeSeriesList[index].KImage,
            Kroute: animeSeriesList[index].Kroute,
            Kname: animeSeriesList[index].KMovie,
          );
        },
      ),
    );
  }
}

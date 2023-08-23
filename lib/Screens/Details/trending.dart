// ignore_for_file: prefer_const_constructor, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:naruto/Models/trending_anime.dart';

import '../../Constant/colors.dart';
import '../../widgets/trending.dart';

class TrendingScreen extends StatelessWidget {
  const TrendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("TRENDING"),
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
        backgroundColor: cblack2,
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  itemCount:trendingList.length ,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return TrendingMoviesContainer(
                      Kmovie: trendingList[index].Kmovie,
                      KmovieDes: trendingList[index].KmovieDes,
                      Kposter: trendingList[index].Kposter,
                      KTroute: trendingList[index].KTroute,
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}

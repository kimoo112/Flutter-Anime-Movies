// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals__create_immutables, non_constant_identifier_names, file_names, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:naruto/widgets/drawer.dart';
import 'package:naruto/widgets/drawerLM.dart';
import '../Background/aniBc.dart';
import '../../Constant/colors.dart';
import '../widgets/Movies/animeMovies.dart';
import '../widgets/Movies/animeSeries.dart';
import '../widgets/Movies/trendingAnime.dart';
import '../widgets/movies.dart';
import '../widgets/searchbarDM.dart';
import '../widgets/searchbarLM.dart';
import 'Details.dart';
import 'Details/animeMovies.dart';
import 'Details/animeSeries .dart';
import 'Details/trending.dart';
import 'Login/signup.dart';
import 'package:flutter_slide_drawer/flutter_slide_drawer.dart';

import '../widgets/drawerDM.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkMode = true;

  int Kindx = 0;

  @override
  Widget build(BuildContext context) {
    final KHeight = MediaQuery.of(context).size.height;
    final KWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: cdark,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isDarkMode = !isDarkMode;
              });
            },
            icon: isDarkMode
                ? Icon(
                    Icons.wb_sunny_outlined,
                    color: cwhite,
                  )
                : Icon(
                    Iconsax.moon,
                    color: cblack2,
                  ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: isDarkMode ? DrawerDM() : DrawerLM(),
      body: Stack(
        children: [
          isDarkMode ? AnimatingBg6() : AnimatingBg1(),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 11,
                    ),
                    Text(
                      "WELCOME TO",
                      style: TextStyle(
                        fontSize: KWidth * 0.11,
                        fontWeight: FontWeight.w600,
                        color: isDarkMode ? cwhite : cblack2,
                      ),
                    ),
                    Text(
                      "NARUTO MOVIES",
                      style: TextStyle(
                        fontSize: KWidth * 0.063,
                        fontWeight: FontWeight.w600,
                        color: isDarkMode ? cyellow : corangee,
                      ),
                    ),
                    isDarkMode ? SearchBarDM() : SearchBarLM(),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Trending",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: isDarkMode ? cwhite : cblack2,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                              // fontWeight: FontWeight.w700,
                              ),
                          textDirection: TextDirection.ltr,
                        ),
                        seeAllButton(context, TrendingScreen(), cyellow)
                      ],
                    ),
                    SizedBox(height: 20),
                    TrendingAnime(),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Anime Movies",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: isDarkMode ? cwhite : cblack2,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                          textDirection: TextDirection.ltr,
                        ),
                        seeAllButton(context, AnimeMoviesScreen(), corangee)
                      ],
                    ),
                    SizedBox(height: 20),
                    AnimeMovies(),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Anime Series ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: isDarkMode ? cwhite : cblack2,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                              // fontWeight: FontWeight.w700,
                              ),
                          textDirection: TextDirection.ltr,
                        ),
                        seeAllButton(context, AnimeSeriesScreen(), credd)
                      ],
                    ),
                    SizedBox(height: 20),
                    AnimeSeries(),
                    SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextButton seeAllButton(BuildContext context, Widget widget, Color color) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 500),
              transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) {
                return widget;
              },
            ),
          );
        },
        child: Text(
          "See All",
          style: TextStyle(color: color, fontWeight: FontWeight.w600),
        ));
  }
}

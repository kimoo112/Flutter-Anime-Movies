// ignore_for_file: prefer_const_constructors, file_names


import 'package:flutter/material.dart';

import '../../Background/aniBc.dart';
import '../../Constant/colors.dart';
import '../../widgets/movies.dart';
import '../Details.dart';

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
        title: Text("Anime Movies",style: TextStyle(),),
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
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: MoviesContainer(
                            Kname: "IZUKU MIDORIYA",
                            Kmovie:
                                "https://i.pinimg.com/736x/42/50/25/425025980cc194671ad1b887b7abd060.jpg",
                            Kroute: DetailsScreen(Ktitle:"IZUKU MIDORIYA" ,
                            Kimage: "https://i.pinimg.com/736x/50/8b/85/508b85b14b0ae9bc52111a8e8a8e93e8.jpg",),
                          )),
                      Expanded(
                          flex: 1,
                          child: MoviesContainer(
                            Kname: "DEKU",
                            Kmovie:
                                "https://th.bing.com/th/id/OIP.EcKA_xG4_qDupoO9djzGPwHaLc?pid=ImgDet&rs=1",
                            Kroute: DetailsScreen(Ktitle:"DEKU" ,
                            Kimage: "https://i.pinimg.com/736x/43/fc/48/43fc489f929285f050fd8926a4d1c5ab.jpg",),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: MoviesContainer(
                            Kname: "Patema Invert",
                            Kmovie:
                                "https://66.media.tumblr.com/ac4570e4a8c50b2d93b2c1c087df74a1/tumblr_ocaqpuiwaI1vwjbc4o1_1280.jpg",
                            Kroute: DetailsScreen(Ktitle:"PATEMA INVERTED" ,
                            Kimage: "https://i.pinimg.com/originals/88/05/d3/8805d3910adb8714b2d0bf71374a1145.jpg",),
                          )),
                      Expanded(
                          flex: 2,
                          child: MoviesContainer(
                            Kname: "Jujutsu Kaisen",
                            Kmovie:
                                "https://cdn.anime-planet.com/anime/primary/jujutsu-kaisen-1-190x286.jpg?t=1625907951",
                            Kroute: DetailsScreen(Ktitle:"Jujutsu Kaisen" ,),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: MoviesContainer(
                            Kname: "Gintama",
                            Kmovie:
                                "https://cdn.anime-planet.com/anime/primary/gintama-kanketsu-hen-yorozuya-yo-eien-nare-1.jpg?t=1625776143",
                            Kroute: DetailsScreen(Ktitle:"Gintama" ,),
                          )),
                      Expanded(
                          flex: 2,
                          child: MoviesContainer(
                            Kname: "Given",
                            Kmovie:
                                "https://cdn.anime-planet.com/anime/primary/given-1.jpg?t=1625762417",
                            Kroute: DetailsScreen(Ktitle:"Given" ,),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                   Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: MoviesContainer(
                            Kname: "Belle",
                            Kmovie:
                                "https://resizing.flixster.com/qB3VWbbnNmQ1nU-Kahycq5Dk41c=/fit-in/180x240/v2/https://resizing.flixster.com/wt5_FPYLuxN5ZF3uWS2MzZYOecw=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzL2FiMGE2NWNjLTNlMGItNDI3My1iMGU2LWNmM2VjMjQ5MDQ0ZC5qcGc=",
                            Kroute: DetailsScreen(Ktitle:"Belle" ,),
                          )),
                      Expanded(
                          flex: 2,
                          child: MoviesContainer(
                            Kname: "Ghost In Shell",
                            Kmovie:
                                "https://resizing.flixster.com/pmCttNAI8SrBg_joZ5UKjSXTiPU=/fit-in/180x240/v2/https://flxt.tmsimg.com/assets/p36417_p_v8_aa.jpg",
                            Kroute: DetailsScreen(Ktitle:"Ghost In Shell" ,),
                          ))
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructor, prefer_const_constructors


import 'package:flutter/material.dart';

import '../../Constant/colors.dart';
import '../../widgets/trending.dart';
import '../Details.dart';



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
                SizedBox(height: 50),
                TrendingMoviesContainer(
                  Kmovie: "Naruto Storm 3",
                  KmovieDes:
                      "Two and a half years have passed since the end of Naruto’s old adventures. He has trained hard with Jiraiya-sama and has returned to Konoha to reunite with his friends",
                  Kposter:
                      "https://th.bing.com/th/id/R.16ff86ec131970d6273e848e51e1265c?rik=hfyIrVhYp68sAQ&riu=http%3a%2f%2fimg.allw.mn%2fcontent%2flifestyle%2f2013%2f07%2f7_naruto-shippuden-storm-3-full-burst.jpg&ehk=3sqU5qzjHHxAho%2fos23fY4TfXauima3JIQm0yEp3814%3d&risl=&pid=ImgRaw&r=0",
                  KTroute: DetailsScreen(Ktitle: "Naruto Storm 3",
                  Kimage: "https://th.bing.com/th/id/OIF.20BNJiSUcJZ0So4TehKFxg?pid=ImgDet&rs=1",),
                ),
                SizedBox(height: 10),
                TrendingMoviesContainer(
                  Kmovie: "Boku Academia",
                  KTroute: DetailsScreen(Ktitle: "Boku Academia",
                  Kimage:
                                      "https://th.bing.com/th/id/R.da2be53047aa565bb86fd35bb38a532a?rik=vzVyOIrkqfg8FA&riu=http%3a%2f%2fotakudome.com%2fwp-content%2fuploads%2f2017%2f10%2fBoku-no-Hero-Academia-Season-2-Visual.jpg&ehk=SOLAA%2bKoMjPolAz3ShrBc6sT21mWm3m2uwmj8lnilPM%3d&risl=&pid=ImgRaw&r=0",
                   
                   ),
                  KmovieDes:
                      "Attack on Titan The Final Season: The Final Chapters Alt titles: Attack on Titan The Final Season: Part III, Shingeki no Kyojin The Final Season Kanketsu-hen",
                  Kposter:
                      "https://th.bing.com/th/id/OIP.ZPDugPSfnJpsLzcNKCVjjAHaEc?pid=ImgDet&rs=1",
                ),
                SizedBox(height: 10),
                TrendingMoviesContainer(
                  Kmovie: "BERSERK",
                  KTroute: DetailsScreen(Ktitle: "BERSERK",
                  Kimage: "https://th.bing.com/th/id/OIF.20BNJiSUcJZ0So4TehKFxg?pid=ImgDet&rs=1",),
                  KmovieDes:
                      "is a Japanese manga series written and illustrated by Kentaro Miura. Set in a medieval Europe-inspired dark fantasy world, the story centers on the characters of Guts",
                  Kposter:
                      "https://wallpapertag.com/wallpaper/middle/9/5/3/981105-free-download-berserker-wallpaper-1920x1080-for-iphone-6.jpg",
                ),
                SizedBox(height: 10),
                TrendingMoviesContainer(
                  Kmovie: "Crown Handler ",
                  KTroute: DetailsScreen(Ktitle: "Crown Handler",),
                  KmovieDes:
                      "The third film of the Princess Principal Crown Handler movie series.",
                  Kposter:
                      "https://i.pinimg.com/originals/32/de/0a/32de0a8726c0c9cf84004fbf5bc708fa.jpg",
                ),
                SizedBox(height: 10),
                TrendingMoviesContainer(
                  Kmovie: "Bleach",
                  KTroute: DetailsScreen(Ktitle: "Bleach",),
                  KmovieDes:
                      "The peace is suddenly broken when warning sirens blare through the Soul Society. Residents there are disappearing without a trace and nobody knows who's behind it.",
                  Kposter:
                      "https://th.bing.com/th/id/OIP.33YJbwNNkYuZF3GSqTVTmAHaEa?pid=ImgDet&rs=1",
                ),
                SizedBox(height: 10),
                TrendingMoviesContainer(
                  Kmovie: "Boruto",
                  KTroute: DetailsScreen(Ktitle: "Boruto",),
                  KmovieDes:
                      "The life of the shinobi is beginning to change. Boruto Uzumaki, son of Seventh Hokage Naruto Uzumaki, has enrolled in the Ninja Academy to learn the ways of the ninja.",
                  Kposter:
                      "https://th.bing.com/th/id/OIP.M5l_Yvp1OlBIh2UkIsa52wHaEK?pid=ImgDet&rs=1",
                ),
                SizedBox(height: 10),
                   TrendingMoviesContainer(
                  Kmovie: "Naruto Special 1",
                  KTroute: DetailsScreen(Ktitle: "Naruto Special 1",),
                  KmovieDes:
                      "Konohamaru has formed the Konoha Corps, and recruits Naruto into the fray. He instructs Naruto to find the legendary crimson four-leaf clover, which is rumored to grant anyone a wish",
                  Kposter:
                      "https://th.bing.com/th/id/R.92ef47c19d711890c268357c2e98726d?rik=zoNjKfgV3xx3Cw&riu=http%3a%2f%2fimages5.fanpop.com%2fimage%2fphotos%2f31900000%2fNaruto-Shippuden-dressup24h-com-31913825-533-300.jpg&ehk=JvfjBzc4E0ABJNXPvOB5koQG5XwZNgtOrtcHY2bffQY%3d&risl=&pid=ImgRaw&r=0",
                ),
              ],
            ),
          ),
        ));
  }
}

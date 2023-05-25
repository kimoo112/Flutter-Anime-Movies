// ignore_for_file: file_names, unnecessary_import, implementation_imports, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../Screens/Details.dart';
import '../movies.dart';

class TrendingAnime extends StatelessWidget {
  const TrendingAnime({super.key});

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
              Ktitle: "NARUTO STORM 3",
              Kimage:
                  "https://th.bing.com/th/id/OIP.Ck9MLNcSMWhEd6Pbb0bRswHaJC?pid=ImgDet&rs=1",
            ),
            Kname: "NARUTO STORM 3",
            Kmovie:
                "https://th.bing.com/th/id/OIP.Ck9MLNcSMWhEd6Pbb0bRswHaJC?pid=ImgDet&rs=1",
          ),
          MoviesContainer(
            Kroute: DetailsScreen(
              Ktitle: "BOKU ACADEMIA",
              Kimage:
                  "https://th.bing.com/th/id/R.da2be53047aa565bb86fd35bb38a532a?rik=vzVyOIrkqfg8FA&riu=http%3a%2f%2fotakudome.com%2fwp-content%2fuploads%2f2017%2f10%2fBoku-no-Hero-Academia-Season-2-Visual.jpg&ehk=SOLAA%2bKoMjPolAz3ShrBc6sT21mWm3m2uwmj8lnilPM%3d&risl=&pid=ImgRaw&r=0",
            ),
            Kname: "BOKU ACADEMIA",
            Kmovie:
                "https://a-static.besthdwallpaper.com/boku-no-hero-academia-izuku-midoriya-deku-wallpaper-540x960-12340_191.jpg",
          ),
          MoviesContainer(
            Kroute: DetailsScreen(
              Kimage:
                  "https://th.bing.com/th/id/OIF.20BNJiSUcJZ0So4TehKFxg?pid=ImgDet&rs=1",
              Ktitle: "BERSERK",
            ),
            Kname: "BERSERK",
            Kmovie:
                "https://th.bing.com/th/id/R.9c83d9f601c1309134a6893bc203ff14?rik=Bcmoj2zLinSNCQ&riu=http%3a%2f%2fdzt1km7tv28ex.cloudfront.net%2fu%2f245661745643782144_35s_d.jpg&ehk=L8pYS%2fMizKPcpe4wslQE%2bP0mZYZRXmVTi0wzzISVOlE%3d&risl=&pid=ImgRaw&r=0",
          ),
        ],
      ),
    );
  }
}

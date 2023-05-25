// ignore_for_file: unused_local_variable, file_names, unused_import, prefer_const_constructors_in_immutables, non_constant_identifier_names, duplicate_ignore, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last, sort_child_properties_last

import 'package:flutter/material.dart';
import '../../Constant/colors.dart';
import '../widgets/button.dart';
import '../widgets/stars.dart';
import 'Download/Download.dart';

class DetailsScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  DetailsScreen({super.key, this.Kimage = "", this.Ktitle = "DETAILS"});

  final String? Kimage;
  final String? Ktitle;
  @override
  Widget build(BuildContext context) {
    final KHeight = MediaQuery.of(context).size.height;
    final KWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          Ktitle!,
          style: TextStyle(fontWeight: FontWeight.w700, letterSpacing: 1.5),
        ),
        centerTitle: true,
        elevation: 0,
        // scrolledUnderElevation: .5,
        surfaceTintColor: cred,

        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      backgroundColor: cblack2,
      body: Column(
        children: [
          SizedBox(
            height: KHeight * .001,
          ),
          Stack(
            children: [
              Container(
                  width: double.infinity,
                  height: KHeight * .99899,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(
                      Kimage!,
                    ),
                    fit: BoxFit.cover,
                  )),

                  // child: Image.network(Kimage!)
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(122, 2, 2, 0),
                              Color.fromARGB(255, 15, 16, 19),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                    ),
                  )),
              Positioned(
                bottom: KHeight * .2,
                left: 20,
                child: Column(
                  children: [
                    Text(
                      Ktitle!,
                      style: TextStyle(color: cwhite, fontSize: 16),
                    ),
                    Stars5(),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DownloadScreen()));
                  },
                  child: Text("WATCH NOW ",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  hoverColor: corange.withOpacity(.7),
                  splashColor: corange,
                ),
                
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}

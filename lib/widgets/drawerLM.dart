// ignore_for_file: unused_import, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors, prefer_const_declarations, file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:naruto/Screens/Login/Login.dart';
import 'package:naruto/widgets/Movies/animeSeries.dart';
import '../../Constant/colors.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Screens/Details/animeSeries .dart';
import 'package:icony/icony.dart';
class DrawerLM extends StatelessWidget {
  void contactMeOnWhatsApp() async {
    final phoneNumber = '+201275619451'; // Replace with your phone number
    final message = Uri.encodeComponent(
        'Hello Karim, I want to Talk with you!'); // Replace with your predefined message

    final whatsappUrl = 'https://wa.me/$phoneNumber?text=$message';

    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch WhatsApp';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      semanticLabel: "MEnu",
      backgroundColor: cwhite,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 200,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: corangee,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                      borderRadius: BorderRadius.circular(150),
                      child: Image.network(
                          "https://yt3.ggpht.com/a/AATXAJzIE4SR2DXzZaH719ElIC1IIbA0LzTLCaodmQ=s900-c-k-c0xffffffff-no-rj-mo",
                          width: 100, errorBuilder: (BuildContext context,
                              Object exception, StackTrace? stackTrace) {
                        return LoadingAnimationWidget.bouncingBall(
                            color: corangee, size: 50);
                      })),
                  SizedBox(height: 10),
                  Text(
                    'Karim Mohamed',
                    style: TextStyle(
                      color: cwhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Kimo12@gmail.com',
                    style: TextStyle(
                      color: cwhite,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              IconlyBroken.home,
              color: corangee,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: corangee,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Iconsax.wallet_search,
              color: corangee,
            ),
            title: Text(
              'Watch Anime',
              style: TextStyle(
                color: corangee,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AnimeSeriesScreen(),
                  ));
            },
          ),
          ListTile(
            leading: Icon(
              IconlyBroken.profile,
              color: corangee,
            ),
            title: Text(
              'Contact Me',
              style: TextStyle(
                color: corangee,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              contactMeOnWhatsApp();
            },
          ),
          Divider(
            color: corangee,
            thickness: 0.5,
          ),
          ListTile(
            leading: Icon(
              IconlyBroken.logout,
              color: corangee,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                color: corangee,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => LoginScreen(),
                  ));

              // Add your code here to handle logout functionality
            },
          ),
        ],
      ),
    );
  }
}

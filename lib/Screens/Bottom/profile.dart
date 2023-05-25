// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_declarations, deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Constant/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  void contactMeOnWhatsApp() async {
    final phoneNumber = '+201275619451'; // Replace with your phone number
    final message = Uri.encodeComponent(
        'Hello Karim, I Want To Talk With You!'); // Replace with your predefined message

    final whatsappUrl = 'https://wa.me/$phoneNumber?text=$message';

    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch WhatsApp';
    }
  }

  void MyGithub() async {
    final githubUrl = 'https://github.com/kimoo112';

    if (await canLaunch(githubUrl)) {
      await launch(githubUrl);
    } else {
      throw 'Could not launch Github';
    }
  }

  void MyFacebook() async {
    final facebookUrl = 'https://www.facebook.com/KaRiM.MoHaMeD.551/';

    if (await canLaunch(facebookUrl)) {
      await launch(facebookUrl);
    } else {
      throw 'Could not launch Facebook';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: cblack2,
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Naruto Profile.png",
                width: 200,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Naruto Karim",
                    style: TextStyle(color: cwhite, fontSize: 20),
                  ),
                ],
              ),
              Spacer(),
              Text(
                "For Contacts Or Questions",
                style: TextStyle(color: cwhite, fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        MyGithub();
                      },
                      icon: Icon(
                        Ionicons.logo_github,
                        size: 33,
                        color: corange,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {
                        contactMeOnWhatsApp();
                      },
                      icon: Icon(
                        Ionicons.logo_whatsapp,
                        size: 33,
                        color: corange,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {
                        MyFacebook();
                      },
                      icon: Icon(
                        Ionicons.logo_facebook,
                        size: 33,
                        color: corange,
                      )),
                ],
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ));
  }
}

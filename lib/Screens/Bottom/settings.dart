// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:switcher/core/switcher_size.dart';
import 'package:switcher_button/switcher_button.dart';
import 'package:switcher/switcher.dart';
import '../../Background/aniBc.dart';
import '../../Constant/colors.dart';

  bool isDarkMode = true;
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    
      body:Stack(
        children: [
         isDarkMode ? AnimatingBg6() : AnimatingBg1(),


          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Naruto Settings",style: TextStyle(color:isDarkMode ? isDarkMode ? cwhite :cblack2 :cblack2,fontSize: 25),),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            
                      Text("Allow Notification ",style: TextStyle(color: isDarkMode ? cwhite :cblack2,fontSize: 18),),
                      Switcher(
                            value: isDarkMode,
                            size: SwitcherSize.medium,
                            switcherButtonRadius: 50,
                          
                            enabledSwitcherButtonRotate: !isDarkMode,
                            iconOff: Icons.notification_important_rounded,
                            iconOn: Icons.notifications_sharp,
                            colorOff: cred,
                            colorOn:cgreen,
                            onChanged: (bool state) {
                              
                            },
                          ),
                    ],
                  ),
                ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            
                      Text("Notification Sound",style: TextStyle(color: isDarkMode ? cwhite :cblack2,fontSize: 18),),
                      Switcher(
                            value: false,
                            size: SwitcherSize.medium,
                            switcherButtonRadius: 50,
                            enabledSwitcherButtonRotate: true,
                            iconOff: Icons.notifications_off,
                            iconOn: Icons.notifications_active_rounded,
                            colorOff: cred,
                            colorOn:cgreen,
                            onChanged: (bool state) {
                              //
                            },
                          ),
                    ],
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            
                      Text("Light Mode",style: TextStyle(color: isDarkMode ? cwhite :cblack2,fontSize: 18),),
                      Switcher(
                            value: false,
                            size: SwitcherSize.medium,
                            switcherButtonRadius: 50,
                            enabledSwitcherButtonRotate: true,
                            iconOff: Icons.dark_mode,
                            iconOn: Icons.light_mode,
                            colorOff: cred,
                            colorOn:cgreen,
                            onChanged: (bool state) {
                              //
                            },
                           onTap: (){
                             setState(() {
                isDarkMode = !isDarkMode;
              });
                          },
                          ),
                    ],
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            
                      Text("Check Spelling",style: TextStyle(color: isDarkMode ? cwhite :cblack2,fontSize: 18),),
                      Switcher(
                            value: false,
                            size: SwitcherSize.medium,
                            switcherButtonRadius: 50,
                            enabledSwitcherButtonRotate: true,
                            iconOff: Icons.spellcheck_outlined,
                            iconOn: Icons.spellcheck_sharp,
                            colorOff: cred,
                            colorOn:cgreen,
                            onChanged: (bool state) {
                              //
                            },
                          ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            
                      Text("Enable Location",style: TextStyle(color: isDarkMode ? cwhite :cblack2,fontSize: 18),),
                      Switcher(
                            value: false,
                            size: SwitcherSize.medium,
                            switcherButtonRadius: 50,
                            enabledSwitcherButtonRotate: true,
                            iconOff: Icons.location_off,
                            iconOn: Icons.location_on,
                            colorOff: cred,
                            colorOn:cgreen,
                            onChanged: (bool state) {
                              //
                            },
                          ),
                    ],
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            
                      Text("Always Tap keyboard keys",style: TextStyle(color: isDarkMode ? cwhite :cblack2,fontSize: 18),),
                      Switcher(
                            value: false,
                            size: SwitcherSize.medium,
                            switcherButtonRadius: 50,
                            enabledSwitcherButtonRotate: true,
                            iconOff: Icons.keyboard_alt_outlined,
                            iconOn: Icons.keyboard_alt_rounded,
                            colorOff: cred,
                            colorOn:cgreen,
                            onChanged: (bool state) {
                              //
                            },
                          ),
                    ],
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            
                      Text("Auto-login",style: TextStyle(color: isDarkMode ? cwhite :cblack2,fontSize: 18),),
                      Switcher(
                            value: false,
                            size: SwitcherSize.medium,
                            switcherButtonRadius: 50,
                            enabledSwitcherButtonRotate: true,
                            iconOff: Icons.login_outlined,
                            iconOn: Icons.logout_rounded,
                            colorOff: cred,
                            colorOn:cgreen,
                            onChanged: (bool state) {
                              //
                            },
                          ),
                    ],
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            
                      Text("Sound Recognition",style: TextStyle(color: isDarkMode ? cwhite :cblack2,fontSize: 18),),
                      Switcher(
                            value: false,
                            size: SwitcherSize.medium,
                            switcherButtonRadius: 50,
                            enabledSwitcherButtonRotate: true,
                            iconOff: Icons.volume_down,
                            iconOn: Icons.volume_up_rounded,
                            colorOff: cred,
                            colorOn:cgreen,
                            onChanged: (bool state) {
                              //
                            },
                          ),
                    ],
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            
                      Text("Dim flashing Lights",style: TextStyle(color: isDarkMode ? cwhite :cblack2,fontSize: 18),),
                      Switcher(
                            value: false,
                            size: SwitcherSize.medium,
                            switcherButtonRadius: 50,
                            enabledSwitcherButtonRotate: true,
                            iconOff: Icons.flash_off,
                            iconOn: Icons.flash_auto,
                            colorOff: cred,
                            colorOn:cgreen,
                            onChanged: (bool state) {
                              //
                            },
                          ),
                    ],
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            
                      Text("Enable Dictation",style: TextStyle(color: isDarkMode ? cwhite :cblack2,fontSize: 18),),
                      Switcher(
                            value: false,
                            size: SwitcherSize.medium,
                            switcherButtonRadius: 50,
                            enabledSwitcherButtonRotate: true,
                            iconOff: Icons.event_busy,
                            iconOn: Icons.event_available,
                            colorOff: cred,
                            colorOn:cgreen,
                            onChanged: (bool state) {
                              //
                            },
                          ),
                    ],
                  ),
                ), Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            
                      Text("Allow Download",style: TextStyle(color: isDarkMode ? cwhite :cblack2,fontSize: 18),),
                      Switcher(
                            value: false,
                            size: SwitcherSize.medium,
                            switcherButtonRadius: 50,
                            enabledSwitcherButtonRotate: true,
                            iconOff: Icons.download,
                            iconOn: Icons.download_done,
                            colorOff: cred,
                            colorOn:cgreen,
                            onChanged: (bool state) {
                              //
                            },
                          ),
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

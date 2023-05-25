// ignore_for_file: unused_import, prefer_const_constructors

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

import '../../Constant/colors.dart';

class SearchBarLM extends StatefulWidget {
  const SearchBarLM({super.key});

  @override
  State<SearchBarLM> createState() => _SearchBarLMState();
}

class _SearchBarLMState extends State<SearchBarLM> {
  @override
  Widget build(BuildContext context) {
    final KWidth = MediaQuery.of(context).size.width;

    TextEditingController textController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, right: 10, left: 10),

      /// In AnimSearchBarLM widget, the width, textController, onSuffixTap are required properties.
      /// You have also control over the suffixIcon, prefixIcon, helpText and animationDurationInMilli
      child: AnimSearchBar(
        color: corangee,
        textFieldColor: cblack2,
        searchIconColor : cblack2,
        textFieldIconColor :cwhite,
        prefixIcon: Icon(
          Icons.search,
          size: 28,
          color: cwhite,
        ),
        
        width: KWidth,
        textController: textController,
        onSuffixTap: () {
          setState(() {
            textController.clear();
          });
        },
        onSubmitted: (String) {},
      ),
    );
  }
}

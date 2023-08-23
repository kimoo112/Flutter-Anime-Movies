// ignore_for_file: unused_import, prefer_const_constructors, non_constant_identifier_names, avoid_types_as_parameter_names, file_names

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

import '../../Constant/colors.dart';

class SearchBarDM extends StatefulWidget {
  const SearchBarDM({super.key,});

  @override
  State<SearchBarDM> createState() => _SearchBarDMState();
}

class _SearchBarDMState extends State<SearchBarDM> {
  @override
  Widget build(BuildContext context) {
    final KWidth = MediaQuery.of(context).size.width;

    TextEditingController textController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, right: 10, left: 10),

      
      child: AnimSearchBar(
        color: cyellow,
        textFieldColor: cyellow,
        prefixIcon: Icon(
          Icons.search,
          size: 28,
          color: cblack2,
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

// ignore_for_file: file_names, unnecessary_import, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

import '../Constant/colors.dart';


class StarsRating extends StatefulWidget {
  const StarsRating({super.key, this.starsValue=3.5});
  final starsValue;

  @override
  State<StarsRating> createState() => _StarsRatingState();
}

class _StarsRatingState extends State<StarsRating> {
  var value ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingStars(
          value: widget.starsValue,
          
          onValueChanged: (v) {
            //
            setState(() {
              value = v;
            });
          },
          starBuilder: (index, color) => Icon(
            CupertinoIcons.star_fill,
            size: 25,
            color: color,
          ),
          starCount: 5,
          starSize: 27,
         valueLabelVisibility: false,
          maxValue: 5,
          starSpacing: 2,
          maxValueVisibility: false,
          animationDuration: Duration(milliseconds: 1000),
          starOffColor:corangee.withOpacity(.3),
          starColor: corange,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tourdequiz/utils/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget competeWidget() {
  return Padding(
    padding: EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(
          'images/stats.svg',
          height: 250,
          width: 250,
        ),
        SizedBox(height: 30.0),
        Text(
          'Compete with peers',
          style: kTitleStyle,
        ),
        SizedBox(height: 15.0),
        Text(
          'Challenge yourself to a range of questions and learn on the go about different subjects',
          style: kSubtitleStyle,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

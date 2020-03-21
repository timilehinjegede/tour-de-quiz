import 'package:flutter/material.dart';
import 'package:tourdequiz/utils/styles.dart';

Widget competeWidget(){
  return Padding(
    padding: EdgeInsets.all(40.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
          image: AssetImage(
            'images/onboarding2.png',
          ),
          height: 300.0,
          width: 300.0,
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
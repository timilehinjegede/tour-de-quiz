import 'package:flutter/material.dart';

class TopScore extends StatelessWidget {

  final String score;
  final String imgPath;
  final String name;
  final String date;

  TopScore({this.score, this.imgPath, this.name, this.date});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: 24,
      child: Container(
        height: 280,
        width: MediaQuery.of(context).size.width - 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(32, 175, 199, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              '$date TOP SCORE',
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  score,
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.wb_incandescent,
                  color: Colors.orangeAccent,
                  size: 45,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'By',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

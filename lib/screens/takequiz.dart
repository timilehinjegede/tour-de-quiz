import 'package:flutter/material.dart';
import 'package:tourdequiz/main.dart';

class TakeQuizDemo extends StatefulWidget {
  @override
  _TakeQuizDemoState createState() => _TakeQuizDemoState();
}

class _TakeQuizDemoState extends State<TakeQuizDemo> {

  final text = '';
  var questionNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height - 500,
              color: Color.fromRGBO(32, 175, 199, 1),
            ),
            Positioned(
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width - 50,
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 2,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      Icon(
                        Icons.info_outline,
                        size: 50,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Jeff Bezos is the owner of Amazon?')
                    ],
                  ),
                ),
              ),
              top: MediaQuery.of(context).size.height - 600,
              left: 23,
            ),
            Positioned(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 150,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(32, 175, 199, 1),
                    borderRadius: BorderRadius.circular(
                        (MediaQuery.of(context).size.width - 200) / 2)),
                child: Center(
                  child: Text(
                    'What\'s is your answer?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              top: MediaQuery.of(context).size.height - 330,
              left: 75,
            ),
            Positioned(
              child: Row(
                children: <Widget>[],
              ),
            ),
            Positioned(
              child: GestureDetector(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              top: 45,
              left: 22,
            ),
            Positioned(
              child: GestureDetector(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              top: 90,
              left: 22,
            ),
            Positioned(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    questionNumber.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'of',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              top: 140,
              left: 22,
            ),
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width - 50,
                height: 5,
                color: Colors.grey,
              ),
              top: 180,
              left: 22,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height - 240,
              left: 50,
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width - 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if(questionNumber!=10){
                            questionNumber++;
                          }
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 130,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.close,
                              color: Colors.red,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'NO',
                              style: TextStyle(
                                color: Color.fromRGBO(32, 175, 199, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 1,
                      color: Colors.grey,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if(questionNumber!=10){
                            questionNumber++;
                          }
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 130,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'YES',
                              style: TextStyle(
                                color: Color.fromRGBO(32, 175, 199, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

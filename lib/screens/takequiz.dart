import 'package:flutter/material.dart';

class TakeQuizDemo extends StatefulWidget {
  @override
  _TakeQuizDemoState createState() => _TakeQuizDemoState();
}

class _TakeQuizDemoState extends State<TakeQuizDemo> {

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
              color: Colors.red,
            ),
            Positioned(
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width - 50,
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 5,
                  color: Colors.green,
                  child: Column(
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
                      Text(
                          'The first person to cross the atlantic was Sir Robert fitcher?')
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
                    color: Colors.blue,
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
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              top: 45,
              left: 22,
            ),
            Positioned(
              child: GestureDetector(
                child: Text(
                  'Animals and wild-life',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                onTap: (){
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
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 5,),
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
                color: Colors.blue,
              ),
              top: 180,
              left: 22,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tourdequiz/components/check.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedCard = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
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
                    'LAST WEEK TOP SCORE',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '4000',
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
                        'Chiebuka Edwin',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 25),
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
                color: Colors.grey[200],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Top Quiz Catgories',
                  style: TextStyle(
                    fontSize: 16
                  ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          height: 120,
                          width: 110,
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  height: 100,
                                  width: 90,
                                  child: Material(
                                    elevation: 2.0,
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(231, 249, 255, 1),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage('images/lion.png'),
                                          fit: BoxFit.cover,
                                          height: 50,
                                          width: 70,
                                        ),
                                        Text('Animals &\nWild-life')
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              selectedCard == 'Animals &\nWild-life'
                                  ? MarkIndicator()
                                  : Container(),
                            ],
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedCard = 'Animals &\nWild-life';
                          });
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          height: 120,
                          width: 110,
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  height: 100,
                                  width: 90,
                                  child: Material(
                                    elevation: 2.0,
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(231, 249, 255, 1),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage('images/bulb.png'),
                                          fit: BoxFit.cover,
                                          height: 45,
                                          width: 40,
                                        ),
                                        Text('Elementary\nQuestions')
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              selectedCard == 'Elementary\nQuestions'
                                  ? MarkIndicator()
                                  : Container(),
                            ],
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedCard = 'Elementary\nQuestions';
                          });
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          height: 120,
                          width: 110,
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  height: 100,
                                  width: 90,
                                  child: Material(
                                    elevation: 2.0,
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color.fromRGBO(231, 249, 255, 1),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage(
                                              'images/footbball.png'),
                                          fit: BoxFit.cover,
                                          height: 45,
                                          width: 40,
                                        ),
                                        Text('Football &\nSports')
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              selectedCard == 'Football &\nSports'
                                  ? MarkIndicator()
                                  : Container(),
                            ],
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            selectedCard = 'Football &\nSports';
                          });
                        },
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width - 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: selectedCard != ''
                              ? Color.fromRGBO(32, 175, 199, 1)
                              : Color.fromRGBO(72, 72, 72, 180),
                        ),
                        child: Center(
                          child: Text(
                            'BEAT HIGH SCORE',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        selectedCard != ''
                            ? Navigator.pushNamed(context, '/takequiz')
                            : null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tourdequiz/components/check.dart';
import 'package:tourdequiz/components/topscore.dart';
import 'package:tourdequiz/screens/takequiz.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _numTopScores = 3;
  var selectedCard = '';
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numTopScores; i++) {
      list.add(i == _currentPage ? _scoreIndicator(true) : _scoreIndicator(false));
    }
    return list;
  }

  Widget _scoreIndicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: isActive ? 30.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Color.fromRGBO(32, 175, 199, 1) : Color.fromRGBO(72, 72, 72, 1),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).size.height/2 - 20,
            left: MediaQuery.of(context).size.width/2 - 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ),
          Positioned(
            top: 80,
            left: 24,
            child: Container(
              height: 280,
              width: double.infinity,
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: <Widget>[
                  TopScore(name: 'Chiebuka Edwin', score: '4000', date: 'LAST WEEK',),
                  TopScore(name: 'Chiebuka Edwin', score: '2900', date: 'UPPER WEEK',),
                  TopScore(name: 'Chiebuka Edwin', score: '2300', date: 'FIRST QUIZ',),
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
                            ? Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) => TakeQuizDemo()
                        ))
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

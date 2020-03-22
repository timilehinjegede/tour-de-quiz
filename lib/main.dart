import 'package:flutter/material.dart';
import 'utils/styles.dart';
import 'package:tourdequiz/onboarding/compete.dart';
import 'package:tourdequiz/onboarding/contribute.dart';
import 'package:tourdequiz/onboarding/take.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Color> _colorList = [
    Color.fromRGBO(185, 236, 253, 100),
    Color.fromRGBO(230, 214, 254, 100),
    Color.fromRGBO(209, 249, 227, 100)
  ];

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: _currentPage == 0
            ? _colorList[0]
            : _currentPage == 1
                ? _colorList[1]
                : _currentPage == 2 ? _colorList[2] : null,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    _currentPage == 2 ? '' : 'Skip',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Container(
                height: 600,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    takeWidget(),
                    contributeWidget(),
                    competeWidget(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              _currentPage != _numPages - 1
                  ? Expanded(
                      child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: GestureDetector(
                            onTap: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Material(
                              elevation: 0.5,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width - 100,
                                child: Center(
                                  child: Text(
                                    'NEXT',
                                    style: bTextStyle,
                                  ),
                                ),
                              ),
                            ),
                          )),
                    )
                  : _currentPage == _numPages - 1
                      ? Expanded(
                          child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Material(
                              elevation: 0.5,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                height: 50.0,
                                width: MediaQuery.of(context).size.width - 100,
                                child: Center(
                                  child: Text(
                                    'START',
                                    style: bTextStyle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Text(''),
            ],
          ),
        ),
      ),
    );
  }
}

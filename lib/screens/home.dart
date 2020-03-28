import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isSelected = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 80,
            left: 24,
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'LAST WEEK TOP SCORE',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '4000',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(Icons.wb_incandescent, color: Colors.orangeAccent, size: 45,)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'By',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        'Chiebuka Edwin',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white
                        ),
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
              padding: EdgeInsets.fromLTRB(20,20,20,25),
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: Colors.grey,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Top Quiz Catgories'),
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
                                      color: Colors.red,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage('images/lion.png'),
                                          fit: BoxFit.cover,
                                          height: 50,
                                          width: 70,
                                        ),
                                        Text(
                                            'Animals &\nWild-life'
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              isSelected ? Positioned(
                                left: 88,
                                top: 4,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.green
                                  ),
                                  child: Icon(Icons.check, color: Colors.white,size: 17,),
                                ),
                              ) : Container(),
                            ],
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            isSelected = true ;
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
                                    color: Colors.red,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage('images/bulb.png'),
                                          fit: BoxFit.cover,
                                          height: 45,
                                          width: 40,
                                        ),
                                        Text(
                                            'Animals &\nWild-life'
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              isSelected ? Positioned(
                                left: 88,
                                top: 4,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green
                                  ),
                                  child: Icon(Icons.check, color: Colors.white,size: 17,),
                                ),
                              ) : Container(),
                            ],
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            isSelected = true ;
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
                                    color: Colors.red,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image(
                                          image: AssetImage('images/footbball.png'),
                                          fit: BoxFit.cover,
                                          height: 45,
                                          width: 40,
                                        ),
                                        Text(
                                            'Animals &\nWild-life'
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              isSelected ? Positioned(
                                left: 88,
                                top: 4,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.green
                                  ),
                                  child: Icon(Icons.check, color: Colors.white,size: 17,),
                                ),
                              ) : Container(),
                            ],
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            isSelected = true ;
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
                          color: Colors.black12
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
                      onTap: (){
                        Navigator.pushNamed(context, '/takequiz');
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

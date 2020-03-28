import 'package:flutter/material.dart';

class MarkIndicator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 88,
      top: 4,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(32, 175, 199, 1),
        ),
        child: Icon(Icons.check, color: Colors.white,size: 17,),
      ),
    );
  }
}

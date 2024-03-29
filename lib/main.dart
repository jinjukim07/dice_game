import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void changeNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeNumber();
//                setState(() {
//                  leftDiceNumber = Random().nextInt(6) + 1;
//                  rightDiceNumber = Random().nextInt(6) + 1;
//                  print('leftdicewidget $leftDiceNumber');
//                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeNumber();
//                setState(() {
//                  leftDiceNumber = Random().nextInt(6) + 1;
//                  rightDiceNumber = Random().nextInt(6) + 1;
//                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

//class DicePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    var leftDiceNumber = 5;
//    return Center(
//      child: Row(
//        children: <Widget>[
//          Expanded(
//            child: FlatButton(
//              onPressed: () {
//                print('The button was click');
//              },
//              child: Image.asset('images/dice$leftDiceNumber.png'),
//            ),
//          ),
//          Expanded(
//            child: FlatButton(
//              onPressed: () {
//                print('the button was click');
//              },
//              child: Image.asset('images/dice2.png'),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}

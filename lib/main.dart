import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  return runApp(
      MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Center(
              child: Text("DiCEE"),
            ),
              backgroundColor: Colors.indigo,
            ),
            backgroundColor: Colors.white,
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
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;
                  });
                  print("Left Dice Rolled- $leftDiceNumber");
                },
                child: Image(
                  width: 250.0,
                  image: AssetImage('images/dice$leftDiceNumber.png'),
                ),
              )
          ),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    rightDiceNumber = Random().nextInt(6) + 1;
                  });
                  print("Right Dice Rolled- $rightDiceNumber");
                },
                child: Image(
                  width: 250.0,
                  image: AssetImage('images/dice$rightDiceNumber.png'),
                ),
              )
          ),
        ],
      ),
    );;
  }
}
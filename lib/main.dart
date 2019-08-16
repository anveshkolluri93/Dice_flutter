import 'dart:math';

import 'package:flutter/material.dart';

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
  int leftDiceCount = 1;
  int rightDiceCount = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceCount();
              },
              child: Image.asset('images/dice$leftDiceCount.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeDiceCount();
                });
              },
              child: Image.asset('images/dice$rightDiceCount.png'),
            ),
          ),
        ],
      ),
    );
  }

  void changeDiceCount() {
    setState(() {
      leftDiceCount = Random().nextInt(6) + 1;
      rightDiceCount = Random().nextInt(6) + 1;
    });
  }
}

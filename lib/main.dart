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
  // const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 4;
  var rightDiceNumber = 3;

  int randomizeDiceValue() {
    return Random().nextInt(6) + 1;
  }

  void randomDicesValues() {
    this.leftDiceNumber = randomizeDiceValue();
    this.rightDiceNumber = randomizeDiceValue();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                setState(() {
                  // leftDiceNumber = randomizeDice();
                  this.randomDicesValues();
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
                child: Image.asset('images/dice$rightDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    // rightDiceNumber = randomizeDice();
                    this.randomDicesValues();
                  });
                }),
          ),
        ],
      ),
    );
  }
}

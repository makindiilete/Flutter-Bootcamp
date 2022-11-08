// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
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
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 2;
  int rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          // With Expanded Widget, we ensure our image fills as much space
          // available and we do not have case of overflowing
          Expanded(
            //We wrap our Images inside a TextButton so we can add a click
            // event to it and we remove the padding we had earlier bcos the
            // TextButton comes with a padding by default
            child: TextButton(
                onPressed: () {
                  /*    ds setState function updates the value of the 'leftDiceNu
                mber' state*/
                  setState(() {
                    /*
                    Random().nextInt(5) will generate numbers from 0 -> 5
                    Random().nextInt(5) + 1 will generate numbers from 1 -> 6
                    Random().nextInt(100) + 50 will generate nos from 50 -> 150
                     */
                    leftDiceNumber = Random().nextInt(5) + 1;
                  });
                },
                // now we r using our 'leftDiceNumber' var to render a
                // specific number of dice
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDiceNumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}

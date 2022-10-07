// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// d main function is the starting point for all our flutter app
void main() {
  // d MaterialApp builds an app dt conforms to d material design
  runApp(MaterialApp(
    // ds turns off the DEBUG text..
    debugShowCheckedModeBanner: false,
    // Center widget centers a widget inside its container.. it takes a child
    // dt can be any widget
    home: Scaffold(
      // one of the properties of d scaffold is an appBar which takes an
      // AppBar() widget
      appBar: AppBar(
        // we can define the title to show as d appBar title
        title: Text('Hello World...'),
        //ds set a custom color for the appBar
        backgroundColor: Colors.blueGrey[900],
      ),
      //ds set d background for our scaffold i.e. d entire page
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Image(image: AssetImage("images/diamond.png")),
      ),
    ),
  ));
}

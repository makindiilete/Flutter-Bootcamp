// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('I am wealthy'),
        centerTitle: true,
        backgroundColor: Color(0XFF774AD9),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/wallet.png'),
        ),
      ),
      backgroundColor: Color(0XFFD9B0B0),
    ),
  ));
}

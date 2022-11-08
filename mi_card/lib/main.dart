// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MiCard());
}

class MiCard extends StatelessWidget {
  const MiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0Xfff26d6d),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/sunshine.jpeg'),
                backgroundColor: Colors.black,
              ),
              Container(
                width: double.infinity,
              ),
              Text(
                "Deb's Touch",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Title',
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0),
              ),
              Text(
                'MAKEUP ARTIST',
                style: TextStyle(
                    color: Colors.white, // Colors.teal[100] OR
                    // Colors.teal.shade100
                    fontFamily: 'Body',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5), // letter spacing defines d space
                // between each letter
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(color: Colors.teal.shade100),
              ),
              Card(
                color: Color(0XFFf2c2c2),
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  title: Text(
                    '+2348163957362',
                    style: TextStyle(
                        fontFamily: 'Body',
                        color: Colors.black,
                        fontSize: 17.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Color(0XFFf2c2c2),
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.black,
                  ),
                  title: Text(
                    'mhizblessing1999@gmail.com',
                    style: TextStyle(
                        fontFamily: 'Body',
                        color: Colors.black,
                        fontSize: 17.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body:
            // SafeArea widget move our items away from the notch and navbar
            SafeArea(
                // a Column() widget contains multi widgets arranged
                // vertically and by default a Column takes all d available
                // vertical space but horizontally it limits itself to d max
                // width of its children.
                child: Row(
          /*'mainAxisSize' defines d height of the Column while
          'MainAxisSize.min' set the height to the required height the Column
           needs to contain its children.
          'MainAxisSize.max' set the height to the maximum available height
          the Column can take
          */
          // mainAxisSize: MainAxisSize.max,

          /*'verticalDirection' : set the vertical alignment of the Column's
          children...

          VerticalDirection.down : - Every child starts from the top to the
          Bottom

          VerticalDirection.up : - Every child starts from the bottom to the top
          */
          // verticalDirection: VerticalDirection.down,

          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // a container is like a div that can contain items
            Container(
              color: Colors.white,
              // we can specify how big the container should be...
              height: 100,
              child: Text('Container 1'),
            ),

            // With Sizedbox, we can add space between widgets
            SizedBox(
              width: 20,
            ),

            Container(
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
          ],
        )),
      ),
    );
  }
}

class Assignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.red,
                width: 100,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  color: Colors.yellow,
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.green[300],
                  height: 100,
                  width: 100,
                )
              ]),
              Container(
                color: Colors.blue,
                width: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}

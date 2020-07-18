import 'package:flutter/material.dart';
import 'dart:math';

void main() =>
  runApp(new MaterialApp(
    home: _BallPage(),
  ));

class _BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 90.0,
          centerTitle: true,
          title: Text("Ask Me Anything",
          style: TextStyle(
            fontSize: 30.0,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        body: _Ball(),
      ),
    );
  }
}

class _Ball extends StatefulWidget {
  @override
  __BallState createState() => __BallState();
}

class __BallState extends State<_Ball> {
 int ballnum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballnum= Random().nextInt(5) + 1;
          });
        }, 
        child: Image.asset('images/ball$ballnum.png'),),
    );
  }
}


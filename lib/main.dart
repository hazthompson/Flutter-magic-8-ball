import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(home: BallPage()),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Center(child: Text('Ask Me Anything')),
        backgroundColor: Colors.blueAccent.shade100,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 4;

  changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print('clicked');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FlatButton(
      onPressed: () {
        changeBallNumber();
      },
      child: Image.asset('images/ball$ballNumber.png'),
    ));
  }
}

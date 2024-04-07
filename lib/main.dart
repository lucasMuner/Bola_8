import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[800],
          centerTitle: true,
          title: Text(
            "A mágica Bola 8",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: Balls(),
        backgroundColor: Colors.green[500],
      ),
    );
  }
}

class Balls extends StatefulWidget {
  const Balls({super.key});

  @override
  State<Balls> createState() => _BallsState();
}

class _BallsState extends State<Balls> {
  var numBall = 3;
  void changeBallFace() {
    setState(() {
      numBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Center(
            child: TextButton(
              onPressed: () {
                changeBallFace();
              },
              child: Image(
                image: AssetImage(
                  'images/ball$numBall.png',
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

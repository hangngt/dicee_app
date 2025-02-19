import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee App',
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(title: Text('Dicee'), backgroundColor: Colors.white),
        body: Dicee_Page(),
      ),
    );
  }
}

class Dicee_Page extends StatefulWidget {
  @override
  _DiceeStatePage createState() => _DiceeStatePage();
}

class _DiceeStatePage extends State<Dicee_Page> {
  int left_DiceeNum = 1;
  int right_DiceeNum = 1;

  void dicee() {
    setState(() {
      left_DiceeNum = Random().nextInt(6) + 1;
      right_DiceeNum = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: dicee,
              child: Image.asset('images/dice$left_DiceeNum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: dicee,
              child: Image.asset('images/dice$right_DiceeNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}

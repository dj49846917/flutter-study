import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "登录"
          ),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            height: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.orange,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.yellow,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.green,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.lightGreen,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.blue,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
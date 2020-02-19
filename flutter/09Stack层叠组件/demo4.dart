import 'package:flutter/material.dart';
import 'json/list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('登录'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 0,
              child: Icon(Icons.home, size: 40, color: Colors.white),
            ),
            Positioned(
              bottom: 0,
              child: Icon(Icons.backspace, size: 40, color: Colors.white),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Icon(Icons.cake, size: 40, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
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
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image: NetworkImage('http://i1.shaodiyejin.com/uploads/tu/201803/9999/1a9b5f8522.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}
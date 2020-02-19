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
        child: ClipOval(
          child: Image.network(
            'http://i1.shaodiyejin.com/uploads/tu/201803/9999/1a9b5f8522.jpg',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
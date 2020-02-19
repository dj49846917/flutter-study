import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( // 导航
          title: Center(
            child: Text(
              '登录'
            ),
          )
        ),
        body: HomeContent(), // 主体内容
      ),
      theme: ThemeData( // 主题
        primaryColor: Colors.yellow
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello, world',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.pink,
          fontSize: 30
        ),
      ),
    );
  }
}
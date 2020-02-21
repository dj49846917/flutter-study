import 'package:flutter/material.dart';
import 'search.dart';

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
              '首页'
            ),
          )
        ),
        body: HomeContent(), // 主体内容
      )
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索页面"),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>SearchPage())
            );
          }
        )
      ],
    );
  }
}
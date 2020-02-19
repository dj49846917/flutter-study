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
    return Stack(
      alignment: Alignment(1,1), // 表示把stack里的所有内容都变了，值可取-1到1
      children: <Widget>[
        Container(
          width: 400,
          height: 300,
          color: Colors.red,
        ),
        Text('这是一个文本'),
        Text('这是一个文本2')
      ],
    );
  }
}
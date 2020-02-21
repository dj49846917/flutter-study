import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('登录'),
          centerTitle: true, // 文字居中
          backgroundColor: Colors.red, // 背景色
          leading: IconButton( // 导航栏前面的图标
            icon: Icon(Icons.arrow_back),
            onPressed: (){}
          ),
          actions: <Widget>[ // 右侧的图标
            IconButton(
              icon: Icon(Icons.work),
              onPressed: (){}
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}
            ),
          ],
        ),
        body: Text('我是登录页面'),
      ),
    );
  }
}
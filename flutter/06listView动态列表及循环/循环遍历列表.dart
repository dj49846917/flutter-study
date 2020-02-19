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
        appBar: AppBar(
          title: Text('登录'),
        ),
        body: HomeContent(),
      ),
    );
  }
}


class HomeContent extends StatelessWidget{
  // 自定义方法
  List<Widget> _getData() {
    List<Widget> list = new List();
    for(var i=0;i<20;i++) {
      list.add(ListTile(
        title: Text("张三2"),
      ));
    }
  return list;
}

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}
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

// crossAxisCount一行多列
class HomeContent extends StatelessWidget{
  List<Widget> _getData() {
    List<Widget> list = new List();
    for(var i=0; i<20; i++) {
      list.add(
        Container(
          child: Text(
            "这是第$i条数据",
            style: TextStyle(color: Colors.white,fontSize: 20),
          ),
          color: Colors.lightBlue,
        )
      );
    };
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // 控制一行有多少列
      mainAxisSpacing: 10, // 垂直子列之间的距离
      crossAxisSpacing: 20, // 水平子列之间的距离
      padding: EdgeInsets.fromLTRB(12, 0, 12, 0), // 内间距
      childAspectRatio: 0.6, // 宽度与高度的比例
      children: this._getData()
    );
  }
}
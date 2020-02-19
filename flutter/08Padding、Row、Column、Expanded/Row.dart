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
    return Container(
      width: 600.0,
      height: 600.0,
      color: Colors.green,
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly, // 相当于flex的justify-content
        crossAxisAlignment: CrossAxisAlignment.center, // 相当于flex的align-items
        children: <Widget>[
          Content(Icons.adb, size: 20, color: Colors.purple),
          Content(Icons.add_box, size: 20, color: Colors.blue),
          Content(Icons.adjust, size: 20)
        ],
      )
    );
  }
}

// crossAxisCount一行多列
class Content extends StatelessWidget{
  double size;
  IconData icon;  
  Color color;
  Content(this.icon,{this.size=20.0,this.color=Colors.red});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: this.color,
      child: Icon(this.icon, size: this.size, color: Colors.white),
    );
  }
}
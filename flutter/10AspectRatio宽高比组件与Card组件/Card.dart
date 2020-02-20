import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('张三', style: TextStyle(fontSize:28)),
                subtitle: Text('高级软件工程师'),
              ),
              ListTile(
                title: Text('电话: xxx', style: TextStyle(fontSize:28)),
                subtitle: Text('地址: xxxx'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('李四', style: TextStyle(fontSize:28)),
                subtitle: Text('高级软件工程师'),
              ),
              ListTile(
                title: Text('电话: xxx', style: TextStyle(fontSize:28)),
                subtitle: Text('地址: xxxx'),
              )
            ],
          ),
        )
      ],
    );
  }
}
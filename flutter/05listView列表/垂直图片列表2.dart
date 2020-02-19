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
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Image.network('https://www.itying.com/images/flutter/1.png'),
          ),
           Container(
             padding: EdgeInsets.all(10),
            child: Image.network('https://www.itying.com/images/flutter/2.png'),
          ),
           Container(
             padding: EdgeInsets.all(10),
            child: Image.network('https://www.itying.com/images/flutter/3.png'),
          ),
           Container(
             padding: EdgeInsets.all(10),
            child: Image.network('https://www.itying.com/images/flutter/4.png'),
          ),
           Container(
             padding: EdgeInsets.all(10),
            child: Image.network('https://www.itying.com/images/flutter/5.png'),
          ),
           Container(
             padding: EdgeInsets.all(10),
            child: Image.network('https://www.itying.com/images/flutter/6.png'),
          )
        ],
      )
    );
  }
}
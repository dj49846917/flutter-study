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
    return Column(
      children: <Widget>[
        Container(
          height: 180.0,
          color: Colors.black,
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network('https://www.itying.com/images/flutter/1.png', fit: BoxFit.cover),
              )
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: Image.network('https://www.itying.com/images/flutter/2.png', fit: BoxFit.cover),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 85,
                      child: Image.network('https://www.itying.com/images/flutter/3.png', fit: BoxFit.cover),
                    ),
                  ],
                ),
              )
            )
          ],
        )
      ],
    );
  }
}
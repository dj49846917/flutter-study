import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  String text;
  Info({this.text="详情"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.text),
      ),
      body: Text("我是商品详情页面"),
    );
  }
}
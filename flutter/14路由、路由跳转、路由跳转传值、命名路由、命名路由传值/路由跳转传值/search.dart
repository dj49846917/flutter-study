import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  String text;
  SearchPage({this.text="搜索"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.text),
      ),
      body: Text("我是搜索页面"),
    );
  }
}
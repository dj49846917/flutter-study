import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final arguments;
  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索页面"),
      ),
      body: Text("我是搜索页面,接收传过来的值为${this.arguments['id']}"),
    );
  }
}
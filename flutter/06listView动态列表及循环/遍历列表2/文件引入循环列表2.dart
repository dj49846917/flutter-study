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
  List<Widget> _getData() {
    var list = arr.map((value){
      return ListTile(
        title: Text(value['title']),
        subtitle: Text(value['author']),
        leading: Image.network(value['imageUrl']),
      );
    });
    return list.toList();
}

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: this._getData(),
    );
  }
}
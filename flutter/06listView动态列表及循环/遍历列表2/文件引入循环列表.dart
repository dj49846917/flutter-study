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
    List<Widget> list = new List();
    for(var i=0;i<arr.length;i++) {
      list.add(ListTile(
        title: Text(arr[i]['title']),
        subtitle: Text(arr[i]['author']),
        leading: Image.network(arr[i]['imageUrl']),
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
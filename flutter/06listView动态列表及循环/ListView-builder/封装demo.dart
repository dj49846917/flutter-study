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
  Widget _getData(context, index) {
    return ListTile(
      title: Text(arr[index]['title']),
      subtitle: Text(arr[index]['author']),
      leading: Image.network(arr[index]['imageUrl']),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: arr.length,
      itemBuilder: this._getData
    );
  }
}
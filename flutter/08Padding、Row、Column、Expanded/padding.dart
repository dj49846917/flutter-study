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

// crossAxisCount一行多列
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
        itemCount: arr.length,
        itemBuilder: (context, index) {
          return Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(arr[index]['imageUrl'],fit: BoxFit.cover),
            ),
          );
        }
      ),
    );
  }
}
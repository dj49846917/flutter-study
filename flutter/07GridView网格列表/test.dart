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
  List<Widget> _getData() {
    var list = arr.map((item){
      return Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Color.fromRGBO(233, 233, 233, 1)
          )
        ),
        child: ListView( // 和Column的区别是，Column图片是多大就是多大，ListView会平铺
          children: <Widget>[
            Image.network(item['imageUrl']),
            SizedBox(height: 10),
            Text(
              item['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      );
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // 控制一行有多少列
      mainAxisSpacing: 10, // 垂直子列之间的距离
      crossAxisSpacing: 10, // 水平子列之间的距离
      padding: EdgeInsets.all(10), // 内间距
      children: this._getData()
    );
  }
}
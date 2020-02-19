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
  Widget _getData(context, index) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Color.fromRGBO(233, 233, 233, 1)
        )
      ),
      child: ListView( // 和Column的区别是，Column图片是多大就是多大，ListView会平铺
        children: <Widget>[
          Image.network(arr[index]['imageUrl']),
          SizedBox(height: 10),
          Text(
            arr[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 控制一行有多少列
          mainAxisSpacing: 10, // 垂直子列之间的距离
          crossAxisSpacing: 10, // 水平子列之间的距离
        ),
        itemCount: arr.length,
        itemBuilder: this._getData,
      ),
    );
  }
}
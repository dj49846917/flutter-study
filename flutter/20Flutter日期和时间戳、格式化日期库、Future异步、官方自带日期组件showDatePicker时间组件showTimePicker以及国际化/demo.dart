import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  Myapp({Key key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var now = DateTime.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(now); // 获取当前时间
    print(now.millisecondsSinceEpoch); // 日期转换为时间戳
    print(DateTime.fromMillisecondsSinceEpoch(1582368144393)); // 将时间戳转换为时间
    print(formatDate(now, [yyyy, '-', mm, '-', dd]));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('文本框')
        ),
        body: Text("当前时间为: ${this.now}")
      ),
    );
  }
}
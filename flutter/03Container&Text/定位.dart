import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            // 导航
            title: Center(
          child: Text('登录'),
        )),
        body: HomeContent(), // 主体内容
      ),
      theme: ThemeData(
          // 主题
          primaryColor: Colors.yellow),
    );
  }
}

// 定位
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          child: Container(
            child: Text("这是一个实时转换工具，当填写的值满足合法格式后会自动触发转换。"),
            width: 300.0,
            height: 250.0,
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0), // 内间距
            decoration: BoxDecoration(
              color: Color.fromARGB(12, 12, 12, 1), // 盒子的背景色
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(10) // 边框圆角
            ),
          ),
          top: 50,
          left: 100,
        )
      ],
    );
  }
}

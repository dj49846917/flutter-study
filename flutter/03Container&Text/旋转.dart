import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( // 导航
          title: Center(
            child: Text(
              '登录'
            ),
          )
        ),
        body: HomeContent(), // 主体内容
      ),
      theme: ThemeData( // 主题
        primaryColor: Colors.yellow
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "这是一个实时转换工具，当填写的值满足合法格式后会自动触发转换。",
        ),
        width: 300.0,
        height: 250.0,
        transform: Matrix4.translationValues(50, 0, 0), // 位移
        // transform: Matrix4.rotationZ(0.5 * pi), // 旋转180度
        decoration: BoxDecoration(
          color: Color.fromARGB(12, 12, 12, 1), // 盒子的背景色
          border: Border.all(
            color: Colors.black,
            width: 1.0
          ),
          borderRadius: BorderRadius.circular(10) // 边框圆角
        ),
      )
    );
  }
}
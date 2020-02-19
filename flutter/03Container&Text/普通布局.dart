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
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis, // 文本溢出显示...
          // textScaleFactor: 2, // 文本缩放
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w800, // 文本加粗
            fontStyle: FontStyle.italic, // 文字倾斜
            decoration: TextDecoration.lineThrough, // 中间划线
            decorationColor: Colors.red, // 划线的颜色
            decorationStyle: TextDecorationStyle.dashed, // 虚划线
            letterSpacing: 5.0 // 文字间隔
          ),
        ),
        width: 300.0,
        height: 250.0,
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0), // 内间距
        alignment: Alignment.bottomLeft, // 盒子中，文本的位置
        // transform: Matrix4.translationValues(100, 0, 0), // 位移
        transform: Matrix4.rotationZ(0.5 * pi), // 旋转180度
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
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "登录"
          ),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.black,
            width: 2
          )
        ),
        child: Image.network(
          'http://i1.shaodiyejin.com/uploads/tu/201803/9999/1a9b5f8522.jpg',
          alignment: Alignment.bottomLeft, // 图片早盒子的位置
          /**
           * color: Colors.blue, 
           * colorBlendMode: BlendMode.screen, 这两句可以设置图片的颜色，没什么用
           */
          // fit: BoxFit.fill, // 填充满盒子, 但是图片会被拉伸
          fit: BoxFit.cover, // 填充满盒子, 但是图片不会被拉伸
          // repeat: ImageRepeat.repeat, // 是否重复
        ), // 加载远程图片
      ),
    );
  }
}
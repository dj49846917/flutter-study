// 自定义组件
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeContent();
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello, world3',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 20
        ),
      ),
    );
  }
}
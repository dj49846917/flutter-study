import 'package:flutter/material.dart';
import 'json/list.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10, // 与其他元素的距离
      runSpacing: 40,
      alignment: WrapAlignment.center,
      children: <Widget>[
        MyButton('第1季'),
        MyButton('第2季'),
        MyButton('第3季'),
        MyButton('第4季'),
        MyButton('第5季'),
        MyButton('第6季')
      ],
    );
  }
}

class MyButton extends StatelessWidget{
  final String text;
  MyButton(this.text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      onPressed: (){},
      textColor: Theme.of(context).accentColor,
    );
  }
}
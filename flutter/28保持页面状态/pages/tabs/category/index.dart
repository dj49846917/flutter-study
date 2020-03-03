import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:demo/provide/demo.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Number(),
            MyButton()
          ],
        )
      )
    );
  }
}

class Number extends StatelessWidget {
  const Number({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200),
      child: Provide<Demo>(
        builder: (context, child, item){
          return Text('${item.count}');
        }
      )
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: (){
          Provide.value<Demo>(context).add();
        },
        child: Text('递增'),
      ),
    );
  }
}
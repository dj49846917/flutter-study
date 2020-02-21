import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到商品详情页面"),
          onPressed: (){
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder: (context)=>SearchPage(text: "首页来的数据"))
            // );
            Navigator.pushNamed(context, '/info');
          }
        )
      ],
    );
  }
}
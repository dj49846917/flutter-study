import 'package:flutter/material.dart';
// import 'package:myapp/pages/Search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索页面"),
          onPressed: (){
            Navigator.pushNamed(context, '/search', arguments: {'id': '456'});
          }
        ),
        RaisedButton(
          child: Text("跳转到商品页面"),
          onPressed: (){
            Navigator.pushNamed(context, '/prod', arguments: {'pid': '123'});
          }
        )
      ],
    );
  }
}
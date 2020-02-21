import 'package:flutter/material.dart';
class RegisterThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("最后一步")
      ),
      body: ListView(
        children: <Widget>[
          Text('注册成功'),
          SizedBox(height:30),
          RaisedButton(
            child: Text('返回到首页'),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed('/');
            }
          )
        ],
      ),
    );
  }
}
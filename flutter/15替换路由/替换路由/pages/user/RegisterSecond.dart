import 'package:flutter/material.dart';
class RegisterSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二步')
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('用户名：xxx'),
            subtitle: Text('密码:xxxxxx'),
          ),
          SizedBox(height:30),
          RaisedButton(
            child: Text('下一步'),
            onPressed: (){
              Navigator.of(context).pushReplacementNamed('/third');
            }
          )
        ],
      ),
    );
  }
}
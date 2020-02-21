import 'package:flutter/material.dart';
class RegisterFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一步'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('手机号:xxx'),
          ),
          SizedBox(height:30),
          RaisedButton(
            child: Text('下一步'),
            onPressed: (){
              Navigator.pushNamed(context, '/second');
            }
          )
        ],
      ),
    );
  }
}
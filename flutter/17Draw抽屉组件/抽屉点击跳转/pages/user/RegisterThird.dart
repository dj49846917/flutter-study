import 'package:flutter/material.dart';
import '../tabs.dart';

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
              // 返回到跟目录
              Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(builder: (context)=>new Tabs(index:1)),
                (route)=>route==null
              );  
            }
          )
        ],
      ),
    );
  }
}
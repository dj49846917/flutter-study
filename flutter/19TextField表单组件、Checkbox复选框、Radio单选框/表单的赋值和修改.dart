import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  Myapp({Key key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  TextEditingController _username = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _username.text = '你好';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('文本框')
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _username,
                decoration: InputDecoration(
                  hintText: '请输入用户名',
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height:20),
              Container(
                width: double.infinity, // 自适应
                height: 40,
                child: RaisedButton(
                  child: Text('登录'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: (){
                    print('${_username.text}');
                  }
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
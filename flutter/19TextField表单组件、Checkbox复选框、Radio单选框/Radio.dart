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
  var _sex;

  @override
  void initState() {
    super.initState();
    _sex = '1';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('文本框')
        ),
        body: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Radio(
                  value: '1', 
                  groupValue: _sex, 
                  onChanged: (val){
                    setState(() {
                      _sex=val;
                    });
                  }
                ),
                Text('男'),
                Radio(
                  value: '2', 
                  groupValue: _sex, 
                  onChanged: (val){
                    setState(() {
                      _sex=val;
                    });
                  }
                ),
                Text('女'),
              ],
            ),
            Row(
              children: <Widget>[
                Text("${this._sex}"),
                Text(this._sex == '1' ? '男' : '女')
              ],
            )
          ],
        )
      ),
    );
  }
}
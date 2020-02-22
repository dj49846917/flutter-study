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
            RadioListTile(
              value: '1', 
              groupValue: _sex,
              title: Text('标题一'),
              subtitle: Text('标题二'),
              secondary: Image.network("http://www.itying.com/images/flutter/2.png"),
              selected: _sex == '1',
              onChanged: (val){
                setState(() {
                  _sex=val;
                });
              }
            ),
            RadioListTile(
              value: '2', 
              groupValue: _sex,
              title: Text('标题三'),
              subtitle: Text('标题四'),
              selected: _sex == '2',
              secondary: Image.network("http://www.itying.com/images/flutter/1.png"),
              onChanged: (val){
                setState(() {
                  _sex=val;
                });
              }
            )
          ],
        )
      ),
    );
  }
}
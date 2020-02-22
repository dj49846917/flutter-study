import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _nowDate = DateTime.now();

  _showDatePicker() async {
    var res = await showDatePicker(
      context: context, 
      initialDate: _nowDate, // 初始值，必传
      firstDate: DateTime(1980), 
      lastDate: DateTime(2100)
    );
    setState(() {
      _nowDate = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    var parseDate = formatDate(_nowDate, [yyyy, '-', mm, '-', dd]);
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell( // 相当于按钮，但是没有样式
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(parseDate),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: this._showDatePicker
          )
        ],
      ),
    );
  }
}
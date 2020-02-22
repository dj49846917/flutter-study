import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _nowDate = DateTime.now(); // 定义日期
  var _nowTime = TimeOfDay(hour: 12, minute: 20);

  _showDatePicker() async { // 日期控件
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

  _showTimePicker() async { // 时间控件
    var results = await showTimePicker(
      context: context, 
      initialTime: _nowTime
    );
    setState(() {
      _nowTime = results;
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell( // 相当于按钮，但是没有样式
                child: Row(
                  children: <Widget>[
                    Text(parseDate),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: this._showDatePicker
              ),
              SizedBox(width:30),
              InkWell( // 相当于按钮，但是没有样式
                child: Row(
                  children: <Widget>[
                    Text("${_nowTime.format(context)}"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: this._showTimePicker
              ),
            ],
          )
        ],
      ),
    );
  }
}
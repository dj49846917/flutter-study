import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showTitle = true;
  DateTime _dateTime;

  final String initDate = '2010-05-05'; // 初始值
  final String minDate = '1960-01-01'; // 最小值
  final String maxDate = '2099-12-31'; // 最大值
  // final String _format = 'yyyy-MMMM-dd'; // 日期格式
  final String _format = 'yy年M月d日    EEE,H时:m分'; // 时间格式
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dateTime = DateTime.parse(initDate);
  }


  void _showDatePicker(){ // 日期控件
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: _showTitle,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse(minDate),
      maxDateTime: DateTime.parse(maxDate),
      initialDateTime: _dateTime,
      dateFormat: _format,
      pickerMode: DateTimePickerMode.datetime, // 设置时间的时候要加这一句
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // var parseDate = formatDate(_dateTime, [yyyy, '-', mm, '-', dd]); //展示日期
    var parseDate = formatDate(_dateTime, [yyyy, '-', mm, '-', dd, '', HH, ':', nn, ':', ss]); //展示日期

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
            ],
          )
        ],
      ),
    );
  }
}
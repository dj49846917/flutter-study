import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "登录"
          ),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // padding: EdgeInsets.all(10), 内间距
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.access_alarm), // 列表前图标
            title: Text(
              '最新！钻石公主号邮轮4位台籍乘客确诊新冠肺炎',
              style: TextStyle(
                fontSize: 20
              ),
            ),
            subtitle: Text('海峡日报'),
            trailing: Icon(Icons.add_to_photos), // 列表后图标
          ),
          ListTile(
            leading: Icon(Icons.add_circle, color: Colors.yellow),
            title: Text(
              '武汉保卫战，我们必胜！',
              style: TextStyle(
                fontSize: 20
              ),
            ),
            subtitle: Text('经济日报'),
          ),
          ListTile(
            leading: Icon(Icons.add_location, size: 40), // 图片大小
            title: Text(
              '美国包机接回“钻石公主号”328名乘客 14名确诊者在机尾用塑料布隔开',
              style: TextStyle(
                fontSize: 20
              ),
            ),
            subtitle: Text('红星新闻'),
          )
        ],
      )
    );
  }
}
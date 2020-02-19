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
            leading: Image.network('https://imgsa.baidu.com/news/q%3D100/sign=8b0cbaa2dec8a786b82a4e0e5709c9c7/d833c895d143ad4b7f005c988d025aafa40f06bf.jpg'),
            title: Text(
              '最新！钻石公主号邮轮4位台籍乘客确诊新冠肺炎',
              style: TextStyle(
                fontSize: 20
              ),
            ),
            subtitle: Text('海峡日报')
          ),
          ListTile(
            leading: Image.network('https://imgsa.baidu.com/news/q%3D100/sign=8801a47b6c2762d0863ea0bf90ed0849/b7003af33a87e95014c7e8341f385343faf2b491.jpg'),
            title: Text(
              '武汉保卫战，我们必胜！',
              style: TextStyle(
                fontSize: 20
              ),
            ),
            subtitle: Text('经济日报'),
            trailing: Image.network('https://imgsa.baidu.com/news/q%3D100/sign=8b0cbaa2dec8a786b82a4e0e5709c9c7/d833c895d143ad4b7f005c988d025aafa40f06bf.jpg')
          ),
          ListTile(
            leading: Image.network('https://imgsa.baidu.com/news/q%3D100/sign=fa51ba55f7dcd100cb9cfc21428a47be/4afbfbedab64034fb966d25ea0c379310a551d3a.jpg'),
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
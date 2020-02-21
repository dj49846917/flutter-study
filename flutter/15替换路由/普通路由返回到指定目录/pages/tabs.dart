import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index=0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _count = 0;
  List _arr = [ HomePage(), SettingPage() ];

  _TabsState(index){
    this._count = index;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('登录'),
        ),
        body: this._arr[this._count],
        bottomNavigationBar: BottomNavigationBar( // 底部导航栏
          type: BottomNavigationBarType.fixed, // 不设置这个，导航数量大于3会变白
          currentIndex: this._count,
          onTap: (int index){
            setState(() {
              this._count = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('设置')
            )
          ]
        ),
      );
  }
}
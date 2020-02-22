import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _count = 0;
  List _arr = [ HomePage(), CategoryPage(), SettingPage() ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('登录'),
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(top: 10),
          child: FloatingActionButton( // 设置浮动按钮
            child: Icon(Icons.add),
            backgroundColor: this._count == 1 ? Colors.blue : Colors.yellow,
            onPressed: (){
              setState(() {
                _count = 1;
              });
            }
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
              icon: Icon(Icons.category),
              title: Text('分类')
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
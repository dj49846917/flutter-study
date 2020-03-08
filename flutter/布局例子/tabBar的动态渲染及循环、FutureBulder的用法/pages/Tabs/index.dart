import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:app/pages/Tabs/Home/index.dart';
import 'package:app/pages/Tabs/Category/index.dart';
import 'package:app/pages/Tabs/Find/index.dart';
import 'package:app/pages/Tabs/Member/index.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final List<Widget> tabsPage = [HomePage(), CategoryPage(), FindPage(), MemberPage()];

  final List<BottomNavigationBarItem> tabs = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('首页')
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category),
      title: Text('分类')
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.looks),
      title: Text('发现')
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      title: Text('我的')
    ),
  ];

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 667, allowFontScaling: true);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: tabs,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: tabsPage[currentIndex],
    );
  }
}

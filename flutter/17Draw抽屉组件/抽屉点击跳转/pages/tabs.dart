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
          drawer: Drawer( // 左侧导航栏
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: UserAccountsDrawerHeader(
                      accountName: Text('一笑、奈何'), // 用户名
                      accountEmail: Text('821084785@qq.com'), // 邮箱
                      currentAccountPicture: CircleAvatar( // 左侧图片
                        backgroundImage: NetworkImage('https://www.itying.com/images/flutter/4.png'),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage( // 背景图片
                          image: NetworkImage('https://www.itying.com/images/flutter/5.png'),
                          fit: BoxFit.cover
                        )
                      ),
                      otherAccountsPictures: <Widget>[
                        Image.network('https://www.itying.com/images/flutter/6.png'),
                        Image.network('https://www.itying.com/images/flutter/1.png')
                      ],
                    )
                  )]
              ),
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.home)),
                title: Text('我的空间'),
              ),
              Divider(), // 分割线
              ListTile(
                leading: CircleAvatar(child: Icon(Icons.settings)),
                title: Text('设置'),
                onTap: (){ // 绑定点事件
                Navigator.pop(context);
                  Navigator.pushNamed(context, '/first');
                },
              )
            ],
          ),
        ),
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
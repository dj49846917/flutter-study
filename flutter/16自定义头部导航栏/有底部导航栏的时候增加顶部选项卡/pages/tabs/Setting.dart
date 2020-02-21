import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar( // 选项卡
                  tabs: <Widget>[
                    Tab(text:'热门'),
                    Tab(text:'食品')
                  ],
                )
              )
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('我是热门的数据1')
                ),
                  ListTile(
                  title: Text('我是热门的数据2')
                ),
                Container(
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/first');
                    },
                    child: Text('注册'),
                  ),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('我是食品的数据1')
                ),
                  ListTile(
                  title: Text('我是食品的数据2')
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
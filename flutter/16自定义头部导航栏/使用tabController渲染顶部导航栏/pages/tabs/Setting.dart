import 'package:flutter/material.dart';
class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 7, vsync: this);
    _tabController.addListener((){
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Expanded(
              child: TabBar( // 选项卡
              controller: _tabController,
                isScrollable: true, // 是否滚动
                tabs: <Widget>[
                  Tab(text:'热门'),
                  Tab(text:'食品'),
                  Tab(text:'男装'),
                  Tab(text:'女装'),
                  Tab(text:'户外'),
                  Tab(text:'家电'),
                  Tab(text:'厨卫'),
                ],
              )
            )
          ]
        ),
      ),
      body: TabBarView(
        controller: _tabController,
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
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('我是男装的数据1')
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('我是女装的数据1')
              ),
                ListTile(
                title: Text('我是女装的数据2')
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('我是户外的数据1')
              ),
                ListTile(
                title: Text('我是户外的数据2')
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('我是家电的数据1')
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('我是厨卫的数据1')
              )
            ],
          )
        ],
      ),
    );
  }
}
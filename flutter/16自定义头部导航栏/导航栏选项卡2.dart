import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  Myapp({Key key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener((){
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('登录'),
            centerTitle: true, // 文字居中
            bottom: TabBar( // 选项卡
              controller: _tabController,
              tabs: <Widget>[
                Tab(text:'热门'),
                Tab(text:'食品')
              ],
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
                  )
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
      )
    );
  }
}
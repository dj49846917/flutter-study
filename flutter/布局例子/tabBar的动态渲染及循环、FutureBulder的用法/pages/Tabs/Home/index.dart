import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app/pages/Tabs/Home/Search.dart';
import 'package:app/service/request.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int length = 0;

  @override
  void initState() {
    super.initState();
    // _tabController = new TabController(length: 7, vsync: this);
    // _tabController.addListener((){
    //   print(_tabController.index);
    // });
  }

  _getTabsData(tabsArr) {
    print('222,${tabsArr.length}');
    List<Widget> list = new List();
    for(int i=0; i<tabsArr.length;i++) {
      list.add(Tab(text: tabsArr[i]['title']));
    }
//    tabsArr.map((item) {
//      list.add(Tab(text: item['title']));
//    });
    print(list);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            // 设置渐变色
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromRGBO(253, 99, 52, 1),
              Color.fromRGBO(253, 52, 52, 1)
            ])),
          ),
          leading: IconButton(
              // 左侧图标
              icon: Image.asset('images/home_ic_sys.png',
                  width: ScreenUtil().setWidth(21.1),
                  height: ScreenUtil().setHeight(21.1)),
              onPressed: () {
                print('扫描');
              }),
          title: Image.asset('images/home_text.png',
              width: ScreenUtil().setWidth(87.43),
              height: ScreenUtil().setHeight(16.67)),
          centerTitle: true,
          elevation: 0, // 取消导航栏的阴影
          actions: <Widget>[
            // 导航栏右侧的图标
            Container(
                width: ScreenUtil().setWidth(70),
                child: Stack(
                  children: <Widget>[
                    IconButton(
                        icon: Image.asset('images/home_ic_xx.png',
                            width: ScreenUtil().setWidth(23),
                            height: ScreenUtil().setHeight(23)),
                        onPressed: () {
                          print('通知');
                        }),
                    Positioned(
                      child: IconButton(
                          icon: Image.asset('images/home_ic_kf.png',
                              width: ScreenUtil().setWidth(21.1),
                              height: ScreenUtil().setHeight(21.1)),
                          onPressed: () {
                            print('客服');
                          }),
                      left: 30,
                    )
                  ],
                ))
          ],
        ),
        body: FutureBuilder(
            future: request('home', 'post'),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // 处理数据
                var tabsArr = snapshot.data['data']['tabs'];
                print(tabsArr.length);
                _tabController =
                    new TabController(length: tabsArr.length, vsync: this);
                _tabController.addListener(() {
                  print(_tabController.index);
                });

                return Column(
                  children: <Widget>[
                    SearchComponent(),
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color.fromRGBO(253, 99, 52, 1),
                        Color.fromRGBO(253, 52, 52, 1)
                      ])),
                      child: TabBar(
                          isScrollable: true,
                          controller: _tabController,
                          tabs: this._getTabsData(tabsArr)),
                    ),
                    Expanded(
                        flex: 1,
                        child: TabBarView(
                          controller: _tabController,
                          children: <Widget>[
                            ListView(
                              children: <Widget>[
                                ListTile(title: Text('我是热门的数据1')),
                                ListTile(title: Text('我是热门的数据2')),
                                Container(
                                  child: RaisedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/first');
                                    },
                                    child: Text('注册'),
                                  ),
                                ),
                              ],
                            ),
                            ListView(
                              children: <Widget>[
                                ListTile(title: Text('我是食品的数据1')),
                                ListTile(title: Text('我是食品的数据2'))
                              ],
                            ),
                            ListView(
                              children: <Widget>[
                                ListTile(title: Text('我是男装的数据1'))
                              ],
                            ),
                            ListView(
                              children: <Widget>[
                                ListTile(title: Text('我是女装的数据1')),
                                ListTile(title: Text('我是女装的数据2'))
                              ],
                            ),
                            ListView(
                              children: <Widget>[
                                ListTile(title: Text('我是户外的数据1')),
                                ListTile(title: Text('我是户外的数据2'))
                              ],
                            ),
                            ListView(
                              children: <Widget>[
                                ListTile(title: Text('我是家电的数据1'))
                              ],
                            ),
                            ListView(
                              children: <Widget>[
                                ListTile(title: Text('我是厨卫的数据1'))
                              ],
                            )
                          ],
                        ))
                  ],
                );
              } else {
                return Center(
                  child: Text('加载中...'),
                );
              }
            }));
  }
}

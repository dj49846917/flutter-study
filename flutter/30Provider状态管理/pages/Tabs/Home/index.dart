import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app/pages/Tabs/Home/Search.dart';
import 'package:app/service/request.dart';
import 'package:app/pages/Tabs/Home/Hot/index.dart';
import 'package:provide/provide.dart';
import 'package:app/provide/home.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin {
  TabController _tabController;

  // 渲染tab
  _getTabsData(tabsArr) {
    List<Widget> list = new List();
    for(int i=0; i<tabsArr.length;i++) {
      list.add(Tab(text: tabsArr[i]['title']));
    }
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
                print("扫描");
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
                Provide.value<HomeData>(context).getHomeData(snapshot.data['data']); // 使用provide全局共享首页收据
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
                            HotComponent(),
                            HotComponent(),
                            HotComponent(),
                            HotComponent(),
                            HotComponent(),
                            HotComponent(),
                            HotComponent()
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

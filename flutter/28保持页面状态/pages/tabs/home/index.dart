import 'package:flutter/material.dart';
import 'package:demo/service/service_method.dart';
import 'package:demo/pages/tabs/home/Banner.dart';
import 'TopNavigator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {
    @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('百姓生活+')),
      body: FutureBuilder(
        future: GetHomePageContent(),
        builder: (context, snapshot){
          if(snapshot.hasData){
             List<Map> arr = (snapshot.data['data']['slides'] as List).cast(); // 顶部轮播组件数据
             List<Map> nav = (snapshot.data['data']['category'] as List).cast(); // 导航组件数据
             return Column(
               children: <Widget>[
                  // 页面顶部轮播组件
                   BannerSwiper(swiperDataList:arr),
                 // 导航组件
                 TopNavigator(navigatorList: nav)
               ],
             );
          }else{
            return Center(
              child: Text('加载中'),
            );
          }
        }
      )
    );
  }
}

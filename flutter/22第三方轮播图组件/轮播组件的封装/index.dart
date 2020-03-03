import 'package:flutter/material.dart';
import 'service_method.dart';
import 'Banner.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('百姓生活+')),
      body: FutureBuilder(
        future: GetHomePageContent(),
        builder: (context, snapshot){
          if(snapshot.hasData){
             List<Map> arr = (snapshot.data['data']['slides'] as List).cast(); // 顶部轮播组件数
             return Column(
               children: <Widget>[
                   BannerSwiper(swiperDataList:arr),   //页面顶部轮播组件
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

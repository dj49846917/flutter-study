import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class TopNavigator extends StatelessWidget {
  final List navigatorList;
  TopNavigator({this.navigatorList});

  List<Widget> _getData(){
    var list = navigatorList.map((item){
      return InkWell(
        child: Column(
          children: <Widget>[
            Image.network("${item['imageUrl']}", width: ScreenUtil().setWidth(95)),
            Text("${item['mallCategoryName']}")
          ]
        ),
        onTap: (){print('点击了导航');},
      );
    }).toList();
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(320),
      padding: EdgeInsets.all(3.0),
      child: GridView.count(
        crossAxisCount: 5, // 一行有5列
        padding: EdgeInsets.all(4.0),
        children: this._getData()
      )
    );
  }
}

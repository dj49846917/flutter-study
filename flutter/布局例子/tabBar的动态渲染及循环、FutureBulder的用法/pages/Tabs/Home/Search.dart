import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchComponent extends StatefulWidget {
  SearchComponent({Key key}) : super(key: key);

  @override
  _SearchComponentState createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(253, 99, 52, 1),
          Color.fromRGBO(253, 52, 52, 1)
        ])),
        padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
        height: ScreenUtil().setHeight(34),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Image.asset(
                  'images/home_ic_shou.png',
                  width: ScreenUtil().setWidth(19),
                  height: ScreenUtil().setHeight(19),
                  scale: 2, // 缩小2倍
                ),
                border: OutlineInputBorder(
                    // 设置边框，圆角无边框
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
                hintText: '复制淘宝、京东等商品标题 搜优惠券 拿返利', // placeholder
                hintStyle: TextStyle(
                    // 控制placeholder的大小和颜色
                    fontSize: ScreenUtil().setSp(14),
                    color: Color.fromRGBO(153, 153, 153, 1)),
                contentPadding: EdgeInsets.only(top: 2) // 控制输入框的padding值
                ),
          ),
        ));
  }
}

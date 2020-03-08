import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotCategoryComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(354),
      height: ScreenUtil().setHeight(104),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Image.asset('images/home_ic_jd.png', width: ScreenUtil().setWidth(50), height: ScreenUtil().setHeight(50)),
              Text(
                  '京东',
                style: TextStyle(fontSize: ScreenUtil().setSp(12),color: Color.fromRGBO(51, 51, 51, 1)),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset('images/home_ic_pdd.png', width: ScreenUtil().setWidth(50), height: ScreenUtil().setHeight(50)),
              Text(
                '拼多多',
                style: TextStyle(fontSize: ScreenUtil().setSp(12),color: Color.fromRGBO(51, 51, 51, 1)),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset('images/home_ic_9.9by.png', width: ScreenUtil().setWidth(50), height: ScreenUtil().setHeight(50)),
              Text(
                '9.9元包邮',
                style: TextStyle(fontSize: ScreenUtil().setSp(12),color: Color.fromRGBO(51, 51, 51, 1)),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset('images/home_ic_spg.png', width: ScreenUtil().setWidth(50), height: ScreenUtil().setHeight(50)),
              Text(
                '视频购',
                style: TextStyle(fontSize: ScreenUtil().setSp(12),color: Color.fromRGBO(51, 51, 51, 1)),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset('images/home_ic_ppq.png', width: ScreenUtil().setWidth(50), height: ScreenUtil().setHeight(50)),
              Text(
                '品牌抢',
                style: TextStyle(fontSize: ScreenUtil().setSp(12),color: Color.fromRGBO(51, 51, 51, 1)),
              )
            ],
          ),

        ],
      )
    );
  }
}
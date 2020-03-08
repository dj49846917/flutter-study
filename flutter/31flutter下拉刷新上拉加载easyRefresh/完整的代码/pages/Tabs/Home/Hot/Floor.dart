import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FloorComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(355),
//      margin: EdgeInsets.only(left: ScreenUtil().setWidth(10)),
      child: Column(
        children: <Widget>[
          // 楼层1
          Row(
            children: <Widget>[
              Image.asset('images/home_floor_img1.png',width: ScreenUtil().setWidth(142), fit: BoxFit.cover, scale: 2),
              SizedBox(width: ScreenUtil().setWidth(10)),
              Column(
                children: <Widget>[
                  Image.asset('images/home_floor_img2.png',width: ScreenUtil().setWidth(200), fit: BoxFit.cover, scale: 2),
                  SizedBox(height: ScreenUtil().setHeight(10)),
                  Image.asset('images/home_floor_img3.png',width: ScreenUtil().setWidth(200), fit: BoxFit.cover, scale: 2),
                ],
              )
            ],
          ),
          SizedBox(height: ScreenUtil().setHeight(10)),
          Row(
            children: <Widget>[
              Image.asset('images/home_floor_img4.png',width: ScreenUtil().setWidth(142), fit: BoxFit.cover, scale: 2),
              SizedBox(width: ScreenUtil().setWidth(10)),
              Image.asset('images/home_floor_img5.png',width: ScreenUtil().setWidth(94.79), fit: BoxFit.cover, scale: 2),
              SizedBox(width: ScreenUtil().setWidth(10)),
              Image.asset('images/home_floor_img6.png',width: ScreenUtil().setWidth(94.79), fit: BoxFit.cover, scale: 2),
            ],
          )
        ],
      ),
    );
  }
}

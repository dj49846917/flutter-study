import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import 'package:app/provide/home.dart';

class TooltipComponent extends StatelessWidget {
  // 渲染tooltip数据
  List<Widget> _showData(arr){
    List<Widget> list = new List();
    print(arr);
    for(int i=0; i<arr.length; i++){
      list.add(
          Container(
            child: Text(
              '${arr[i]['val']}',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: ScreenUtil().setSp(11)),
            ),
            width: ScreenUtil().setWidth(84)),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    var hotData = Provide.value<HomeData>(context).dataSource['tabs'][0]['info']['tooltip'];
    return Container(
        height: ScreenUtil().setHeight(128),
        width: ScreenUtil().setWidth(375),
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.asset('images/home_bg_img2.png',
                  width: ScreenUtil().setWidth(375),
                  height: ScreenUtil().setHeight(103),
                  fit: BoxFit.cover),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: ScreenUtil().setWidth(355),
                height: ScreenUtil().setHeight(128),
                padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(255, 174, 20, 1),
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      "${hotData['title']}",
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(16),
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: ScreenUtil().setHeight(10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('images/home_ic_tb.png',
                            width: ScreenUtil().setWidth(35.23),
                            height: ScreenUtil().setHeight(35.23)),
                        Container(
                            width: ScreenUtil().setWidth(76),
                            height: ScreenUtil().setHeight(1),
                            color: Colors.white,
                            margin: EdgeInsets.fromLTRB(4, 0, 4, 0)),
                        Image.asset('images/home_ic_tb.png',
                            width: ScreenUtil().setWidth(35.23),
                            height: ScreenUtil().setHeight(35.23)),
                        Container(
                            width: ScreenUtil().setWidth(76),
                            height: ScreenUtil().setHeight(1),
                            color: Colors.white,
                            margin: EdgeInsets.fromLTRB(4, 0, 4, 0)),
                        Image.asset('images/home_ic_tb.png',
                            width: ScreenUtil().setWidth(35.23),
                            height: ScreenUtil().setHeight(35.23))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: this._showData(hotData['list'])
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
}
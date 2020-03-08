import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provide/provide.dart';
import 'package:app/provide/home.dart';

class HotCategoryComponent extends StatelessWidget {
  List<Widget> _getCategoryData(param){
    List<Widget> list = new List();
    for(int i=0; i<param.length; i++){
      list.add(
        Container(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: InkWell(
            onTap: (){
              print(param[i]);
            },
            child: Column(
              children: <Widget>[
                Image.network("${param[i]['imageUrl']}", width: ScreenUtil().setWidth(50),height: ScreenUtil().setHeight(50)),
                Text("${param[i]['mallCategoryName']}", style: TextStyle(fontSize: ScreenUtil().setSp(12), color: Color.fromRGBO(51, 51, 51, 1)),textAlign: TextAlign.center,)
              ],
            ),
          ),
        )
      );
    }
    return list;
  }
  
  @override
  Widget build(BuildContext context) {
    var dataSource = Provide.value<HomeData>(context).dataSource;
    var arr = dataSource['tabs'][0]['info']['category'];
    return Container(
      width: ScreenUtil().setWidth(354),
      height: ScreenUtil().setHeight(84),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: _getCategoryData(arr)
          )
        ],
      )
    );
  }
}
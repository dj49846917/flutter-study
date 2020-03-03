import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List arr = ['images/img_bg.png', 'images/img_bg2.png', 'images/img_bg3.png'];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 667, allowFontScaling: true);
    return Container(
      child: Swiper(
        itemBuilder: (BuildContext context,int index){
          if(index == 2) {
            return Stack(
              children: <Widget>[
                Image.asset(arr[index], height: ScreenUtil().setHeight(667), fit: BoxFit.fill),
                Positioned(
                  child: Container(
                    height: ScreenUtil().setHeight(44),
                    width: ScreenUtil().setWidth(195),
                    child: RaisedButton(
                      onPressed: (){
                        print('22');
                      },
                      child: Text(
                        '立即体验', 
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(18),
                          color: Colors.white
                        )
                      ),
                      color: Color.fromRGBO(254, 111, 3, 1),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    )
                  ),
                  bottom: ScreenUtil().setHeight(31),
                  left: ScreenUtil().setWidth(90),
                )
              ],
            );
          }
          return Image.asset(arr[index], fit: BoxFit.fill);
        },
        itemCount: arr.length,
        pagination: new SwiperPagination(),
        // control: new SwiperControl(),
        loop: false,
      ),
    );
  }
}
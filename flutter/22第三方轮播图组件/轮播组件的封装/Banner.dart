import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BannerSwiper extends StatelessWidget {
  final List swiperDataList; // banner的数据
  BannerSwiper({Key key,this.swiperDataList}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 333,
      child: Swiper(
        itemCount: swiperDataList.length,
        itemBuilder: (BuildContext context, int index){
          return Image.network('${swiperDataList[index]['imageUrl']}', fit: BoxFit.cover);
        },
        pagination: new SwiperPagination(), // 设置分页
        autoplay: true, // 自动播放
      ),
    );
  }
}
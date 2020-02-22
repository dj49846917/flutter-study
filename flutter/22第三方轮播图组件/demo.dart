import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  Myapp({Key key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  List arr = [
    { "imageUrl": "https://www.itying.com/images/flutter/1.png" },
    { "imageUrl": "https://www.itying.com/images/flutter/2.png" },
    { "imageUrl": "https://www.itying.com/images/flutter/3.png" },
    { "imageUrl": "https://www.itying.com/images/flutter/4.png" },
    { "imageUrl": "https://www.itying.com/images/flutter/5.png" },
    { "imageUrl": "https://www.itying.com/images/flutter/6.png" },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('轮播图')
        ),
        body: Swiper(
          itemBuilder: (BuildContext context,int index){
            return Image.network(arr[index]['imageUrl']);
          },
          itemCount: arr.length,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
        ),
      )
    );
  }
}
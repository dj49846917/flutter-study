import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:app/provide/home.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var category = Provide.value<HomeData>(context).dataSource['tabs'][0]['info']['category'];
    var category = [
      {
        "imageUrl":
            "https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/20983/16/10753/6124/5c8a16aaE5d6b15d7/01e0e818a7505267.png",
        "mallCategoryName": "京东超市",
        "id": "4480361214071493"
      },
      {
        "imageUrl":
            "https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/39401/17/2391/5859/5cc06fcfE2ad40668/28cda0a571b4a576.png",
        "mallCategoryName": "数码电器",
        "id": "5902203302905216"
      },
      {
        "imageUrl":
            "https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/17169/3/4127/4611/5c2f35cfEd87b0dd5/65c0cdc1362635fc.png",
        "mallCategoryName": "京东服饰",
        "id": "8273517520147804"
      },
      {
        "imageUrl":
            "https://m.360buyimg.com/mobilecms/s120x120_jfs/t17725/156/1767366877/17404/f45d418b/5ad87bf0N66c5db7c.png",
        "mallCategoryName": "京东生鲜",
        "id": "5484259587587479"
      },
      {
        "imageUrl":
            "https://m.360buyimg.com/mobilecms/s120x120_jfs/t18454/342/2607665324/6406/273daced/5b03b74eN3541598d.png",
        "mallCategoryName": "充值缴费",
        "id": "4227572266689190"
      },
      {
        "imageUrl":
            "https://m.360buyimg.com/mobilecms/s120x120_jfs/t22228/270/207441984/11564/88140ab7/5b03fae3N67f78fe3.png",
        "mallCategoryName": "9.9元拼",
        "id": "4245444526517630"
      },
      {
        "imageUrl":
            "https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/7068/29/8987/5605/5c120da2Ecae1cc3a/016033c7ef3e0c6c.png",
        "mallCategoryName": "领券",
        "id": "2743571778431093"
      },
      {
        "imageUrl":
            "https://m.360buyimg.com/mobilecms/s120x120_jfs/t16828/63/2653634926/5662/d18f6fa1/5b03b779N5c0b196f.png",
        "mallCategoryName": "赚钱",
        "id": "4797346613401423"
      },
      {
        "imageUrl":
            "https://m.360buyimg.com/mobilecms/s120x120_jfs/t1/22262/9/1470/4527/5c120cd0E5d3c6c66/4792ec307a853e9f.png",
        "mallCategoryName": "PLUS会员",
        "id": "9572218571031998"
      },
      {
        "imageUrl":
            "https://m.360buyimg.com/mobilecms/s120x120_jfs/t20860/204/215345958/6866/139dc352/5b03b902N8cc08b40.png",
        "mallCategoryName": "排行榜",
        "id": "7906749089479335"
      }
    ];
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.network(category[0]['imageUrl'],width: ScreenUtil().setWidth(50)),
                  Text('京东')
                ],
              ),
              Column(
                children: <Widget>[
                  Image.network(category[0]['imageUrl'],width: ScreenUtil().setWidth(50)),
                  Text('京东')
                ],
              ),
              Column(
                children: <Widget>[
                  Image.network(category[0]['imageUrl'],width: ScreenUtil().setWidth(50)),
                  Text('京东')
                ],
              ),
              Column(
                children: <Widget>[
                  Image.network(category[0]['imageUrl'],width: ScreenUtil().setWidth(50)),
                  Text('京东')
                ],
              ),
              Column(
                children: <Widget>[
                  Image.network(category[0]['imageUrl'],width: ScreenUtil().setWidth(50)),
                  Text('京东')
                ],
              ),
              Column(
                children: <Widget>[
                  Image.network(category[0]['imageUrl'],width: ScreenUtil().setWidth(50)),
                  Text('京东')
                ],
              ),
              Column(
                children: <Widget>[
                  Image.network(category[0]['imageUrl'],width: ScreenUtil().setWidth(50)),
                  Text('京东')
                ],
              ),
              Column(
                children: <Widget>[
                  Image.network(category[0]['imageUrl'],width: ScreenUtil().setWidth(50)),
                  Text('京东')
                ],
              ),
              Column(
                children: <Widget>[
                  Image.network(category[0]['imageUrl'],width: ScreenUtil().setWidth(50)),
                  Text('京东')
                ],
              ),
              Column(
                children: <Widget>[
                  Image.network(category[0]['imageUrl'],width: ScreenUtil().setWidth(50)),
                  Text('京东')
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

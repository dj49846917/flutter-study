import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app/service/request.dart';

class FindPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('上拉加载，下拉刷新demo')),
      body: HotComponent(),
    );
  }
}

class HotComponent extends StatefulWidget {
  @override
  _HotComponentState createState() => _HotComponentState();
}

class _HotComponentState extends State<HotComponent> {
  EasyRefreshController _controller;
  List dataSource = []; // 数据源
  int page; // 页码
  int total; // 总数
  final String imgUrl =
      'https://img.alicdn.com/tps/i2/O1CN01orS4SS23mX4f4l3FK_!!0-juitemmedia.jpg_560x370Q50s50.jpg_.webp';

  final String title =
      '买就送杯 越南进口中原g7三合一速溶咖啡粉即买就送杯 越南进口中原g7三合一速溶咖啡粉即';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = EasyRefreshController();
    var params = {"maxResults": "10", "pageNo": "1"};
    this._initData(params);
  }

  // 初始化数据
  void _initData(num){
    demo(formData: num).then((res) {
      setState(() {
        dataSource.addAll(res['ResponseBody']['RetList']);
        page = res['ResponseBody']['current'];
        total = res['ResponseBody']['total'];
      });
    });
  }

  Widget _hotListComponent(){
    return Container(
      width: ScreenUtil().setWidth(375),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      margin: EdgeInsets.only(top: 12),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              '专属推荐',
              style: TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontSize: ScreenUtil().setSp(18),
                  fontWeight: FontWeight.w800),
            ),
          ),
          Wrap(
            spacing: 10, // 主轴的间距
            runSpacing: 10, // 副轴的间距
            children: _showData(),
          )
        ],
      ),
    );
  }

  // 渲染列表
  List<Widget> _showData() {
    List<Widget> list = new List();
    for (int i = 0; i < dataSource.length; i++) {
      list.add(
          Container(
            width: ScreenUtil().setWidth(170),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.network("$imgUrl",
                        width: ScreenUtil().setWidth(170), fit: BoxFit.cover
                    ),
                    Positioned(
                      child: Image.asset('images/home_hot_img_btn.png', fit: BoxFit.cover, scale: 2),
                      right: 5,
                      top: 5,
                    )
                  ],
                ),
                Text(
                  "$i",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: ScreenUtil().setSp(14), color: Color.fromRGBO(51, 51, 51, 1)),
                )
              ],
            ),
          )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      controller: _controller,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              _hotListComponent() // 推荐列表
            ],
          )
        ],
      ),
      footer: ClassicalFooter(
        enableInfiniteLoad: false,
      ),
      onRefresh: () async {
        await Future.delayed(Duration(seconds: 1), () {
          var params = {"maxResults": "10", "pageNo": page};
          this._initData(params);
          _controller.resetLoadState();
        });
      },
      onLoad: () async{
        var newPage = ++page;
        var params = {"maxResults": "10", "pageNo": newPage};
        await Future.delayed(Duration(seconds: 1), () {
          print('onLoad');
          demo(formData: params).then((res) {
            setState(() {
              dataSource.addAll(res['ResponseBody']['RetList']);
              page = res['ResponseBody']['current'];
              total = res['ResponseBody']['total'];
            });
            _controller.finishLoad(noMore: total <= dataSource.length);
          });
        });
      },
    );
  }
}

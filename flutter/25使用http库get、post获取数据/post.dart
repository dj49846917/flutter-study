import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('get获取数据')
        ),
        body: DialogPage(),
      ),
    );
  }
}

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  List arr = new List();

  _initData() async{
    var url = 'https://www.fastmock.site/mock/bc794526951e3a8e240c26152f54f56f/map/api/info';
    var response = await http.post(url, body: {'name': 'zhangsan'});
    if (response.statusCode == 200) {
      setState(() {
        arr = json.decode(response.body)['data']['bannerList'];
      });
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  void initState() {
    super.initState();
    _initData(); // 初始化数据
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: arr.length,
      itemBuilder: (context, index){
        return ListTile(
          title: Text(arr[index]['title']),
        );
      }
    );
  }
}
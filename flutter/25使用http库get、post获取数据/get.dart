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
    var url = 'https://www.fastmock.site/mock/5ae8a35418a53e4a0a524d3c31810603/api/code-notification/info';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        arr = json.decode(response.body)['data']['applicationAdvantageInfo']['list'];
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
          title: Text(arr[index]['list_title']),
          subtitle: Text(arr[index]['list_desc']),
        );
      }
    );
  }
}
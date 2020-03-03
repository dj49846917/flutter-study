import 'package:dio/dio.dart';
import 'dart:async';
import '../config/service_url.dart';

// 获取首页主题内容
Future GetHomePageContent() async{
  try{
    print('开始获取首页数据.....');
    Dio dio = new Dio();
    dio.options.contentType = Headers.formUrlEncodedContentType; // 设置请求头
    var formData = {
      'lon': '115.02932',
      'lat': '35.76189'
    };
    Response response = await dio.post(servicePath['homePageContent'], data: formData);
    if(response.statusCode == 200) {
      return response.data;
    }else {
      throw Exception('后端接口出现异常。。。');
    }
  }catch(e) {
    return print('ERROR-------$e');
  }
}
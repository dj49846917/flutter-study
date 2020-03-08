import 'package:dio/dio.dart';
import 'package:app/config/serviceUrl.dart';

// 封装请求公共方法
Future request(url, type, {formData}) async {
  try {
    print('开始获取共有数据');
    Response response;
    Dio dio = new Dio();
    // get请求
    if(type == 'get') {
      if(formData == null) {
        response = await dio.get(servicePath[url]);
      } else {
        response = await dio.post(servicePath[url],queryParameters:formData);
      }
    }

    // post请求
    if(type == 'post') {
      dio.options.contentType = Headers.formUrlEncodedContentType; // 设置请求头
      if (formData ==null) {
        response = await dio.post(servicePath[url]);
      } else {
        response = await dio.post(servicePath[url],data:formData);
      }
    }

    // 返回
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('后端接口不正常，异常！');
    }
  } catch (e) {
    return print('ERROR:=====>$e');
  }
}
main() {
  // 1. 字符串定义的几种方式
  String str1 = "你好";
  String str2 = 'dart';
  print(str1);
  print(str2);

  String str3 = """你好呀
    hello,
    ver
  """;
  print(str3);

  String str4 = '''我爱你
    古
    两
  ''';
  print(str4);

  // 2. 拼接字符串的方式
  String str5 = 'hello';
  String str6 = 'world';
  print(str5 + ',' + str6);
  print('$str5, $str6');
}
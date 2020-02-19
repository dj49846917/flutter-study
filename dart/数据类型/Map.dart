// Dart数据类型： map
main() {
  // 第一种定义map的方式
  var a = {
    "name": "张三",
    "age": 123
  };
  print(a);
  print(a.length);
  print(a["age"]);

  // 第二种定义map的方式
  var b = new Map();
  b['name'] = '李四';
  b['age'] = 12;
  print(b);
}
// Dart数据类型： List(数组/集合)
main() {
  // 1. 第一种定义List的方式
  var l1 = ['1', '2', "张三"];
  l1.add("66");
  print(l1);


  // 2. 第二种定义List的方式
  var arr = new List();
  arr.add('2');
  arr.add('Lisi');
  print(arr);

  // 3. list的泛型
  var list = new List<int>();
  list.add(555);
  list.add(8);
  print(list);
}
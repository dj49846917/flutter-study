/**
 * Dart判断数据类型
 * is 关键词
 * 
 */
main() {
  var a = 123.4;
  if(a is String) {
    print('真');
  } else {
    print('假');
  }
}
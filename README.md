# dart的学习

## 1. 常量与变量
  * 变量
    ```
      # 可以使用var或者类型定义变量
      main() {
        var num = 123;
        print(num); // 输出123

        String a = "zhangsan";
        int b = 5678;
        print(a); // 输出： "zhangsan"
        print(b); // 输出: 5678
      }
    ```

  * 常量
    ```
      # 使用final或者const定义常量
      main() {
        const num = 456;
        print(num);

        final a = new DateTime.now(); // 注意，这里使用const会报错
        print(a)
      }
    ```

## 2. 常用的数据类型
  * Numbers(数值)：
      * int
      * double
      * [详细代码请看:/dart/数据类型/Number.dart](/dart/数据类型/Number.dart)

  * Strings(字符串)：
      * String
      * [详细代码请看:/dart/数据类型/String.dart](/dart/数据类型/String.dart)

  * Booleans(布尔)：
      * bool
      * [详细代码请看:/dart/数据类型/Boolean.dart](/dart/数据类型/Boolean.dart)

  * List(数组):
      * 在dart中，数组是列表对象，所以大多数人只称他们为列表
      * [详细代码请看:/dart/数据类型/List.dart](/dart/数据类型/List.dart)

  * Maps(字典):
      * 通常来说，Map是一个键值对相关的对象。键和值可以是任何类型的对象，每个键只出
      * [详细代码请看:/dart/数据类型/Map.dart](/dart/数据类型/Map.dart)

  * 数据类型的判断：
      * [详细代码请看:/dart/数据类型/if.dart](/dart/数据类型/if.dart)

## 3. dart的运算符
  * 赋值运算符
    * [详细代码请看:/dart/运算符&条件表达式&类型转换/赋值运算符.dart](/dart/运算符&条件表达式&类型转换/赋值运算符.dart)

  * 关系运算符
    * [详细代码请看:/dart/运算符&条件表达式&类型转换/关系运算符.dart](/dart/运算符&条件表达式&类型转换/关系运算符.dart)

  * 逻辑运算符
    * [详细代码请看:/dart/运算符&条件表达式&类型转换/逻辑运算符.dart](/dart/运算符&条件表达式&类型转换/逻辑运算符.dart)

  * 算术运算符
    * [详细代码请看:/dart/运算符&条件表达式&类型转换/算术运算符.dart](/dart/运算符&条件表达式&类型转换/算术运算符.dart)

## 4. dart的条件表达式
  * if else
    
  * switch case

  * [详细代码请看:/dart/运算符&条件表达式&类型转换/条件表达式.dart](/dart/运算符&条件表达式&类型转换/条件表达式.dart)

## 5. 类型转换
  * String转int
    * int.parse()
      ```
        String a = '123';
        int b = int.parse(a);
        print(b);
      ```
  
  * int 转String
    * toString()
      ```
        int c = 22;
        String d = c.toString();
        print(d);
      ```

  * double跟与String的转换跟int一样

  * [详细代码请看:/dart/运算符&条件表达式&类型转换/Dart类型转换.dart](/dart/运算符&条件表达式&类型转换/Dart类型转换.dart)

## 6. dart的循环
  * for循环
    * [详细代码请看:/dart/循环/for循环.dart](/dart/循环/for循环.dart)
  
  * while循环
    * [详细代码请看:/dart/循环/while.dart](/dart/循环/while.dart)

## 7. 集合
  * List
    * [详细代码请看:/dart/Set&Map&List/list.dart](/dart/Set&Map&List/list.dart)

  * Map
    * [详细代码请看:/dart/Set&Map&List/map.dart](/dart/Set&Map&List/map.dart)

  * Set
    * [详细代码请看:/dart/Set&Map&List/set.dart](/dart/Set&Map&List/set.dart)

  * 集合里面的循环
    * [详细代码请看:/dart/Set&Map&List/forEach&map&where&any&every.dart](/dart/Set&Map&List/forEach&map&where&any&every.dart)
  
## 8. 函数
  * 方法的定义 变量 方法的作用域
    * [详细代码请看:/dart/函数/方法的定义、变量、方法的作用域.dart](/dart/函数/方法的定义、变量、方法的作用域.dart)

  * 方法传参 、默认参数、可选参数、命名参数 、方法作为参数
    * [详细代码请看:/dart/函数/方法传参 、默认参数、可选参数、命名参数、方法作为参数.dart](/dart/函数/方法传参、默认参数、可选参数、命名参数、方法作为参数.dart)

  * 箭头函数、函数的相互调用
    * [详细代码请看:/dart/函数/箭头函数、函数的相互调用.dart](/dart/函数/箭头函数、函数的相互调用.dart)

  * 匿名方法、自执行方法、方法的递归
    * [详细代码请看:/dart/函数/匿名方法、自执行方法、方法的递归.dart](/dart/函数/匿名方法、自执行方法、方法的递归.dart)

## 9. 类
  * Dart面向对象的介绍以及Data内置对象
    * [详细代码请看:/dart/类/Dart面向对象的介绍以及Data内置对象.dart](/dart/类/Dart面向对象的介绍以及Data内置对象.dart)

  * Dart中创建义类使用类
    * [详细代码请看:/dart/类/Dart中创建义类使用类.dart](/dart/类/Dart中创建义类使用类.dart)

  * Dart中自定义类的默认构造函数
    * [详细代码请看:/dart/类/Dart中自定义类的默认构造函数.dart](/dart/类/Dart中自定义类的默认构造函数.dart)

  * Dart中自定义类的命名构造函数
    * [详细代码请看:/dart/类/Dart中自定义类的命名构造函数.dart](/dart/类/Dart中自定义类的命名构造函数.dart)

  * Dart中把类单独抽离成一个模块
    * [详细代码请看:/dart/类/Dart中把类单独抽离成一个模块.dart](/dart/类/Dart中把类单独抽离成一个模块.dart)

    * [详细代码请看:/dart/类/lib/Person.dart](/dart/类/lib/Person.dart)

  * Dart中的私有方法和私有属性
    * [详细代码请看:/dart/类/Dart中的私有方法和私有属性.dart](/dart/类/Dart中的私有方法和私有属性.dart)

  * 类中的getter和setter修饰符的用法
    * [详细代码请看:/dart/类/类中的getter和setter修饰符的用法.dart](/dart/类/类中的getter和setter修饰符的用法.dart)

  * 类中的初始化列表
    * [详细代码请看:/dart/类/类中的初始化列表.dart](/dart/类/类中的初始化列表.dart)

  * 静态类
    * [详细代码请看:/dart/类/静态类/类中的静态成员和静态方法.dart](/dart/类/静态类/类中的静态成员和静态方法.dart)

  * 类的继承
    * Dart中的对象操作符
      1. ? 条件运算符（了解）
      2. as 类型转换
      3. is 类型判断
      4. .. 级联操作（连缀）(记住)
      5. [详细代码请看:/dart/类/类的继承/Dart中的对象操作符.dart](/dart/类/类的继承/Dart中的对象操作符.dart)

    * Dart类的继承-简单继承
      * [详细代码请看:/dart/类/类的继承/Dart类的继承-简单继承.dart](/dart/类/类的继承/Dart类的继承-简单继承.dart)

    * 类的继承-super关键词的使用-实例化自类给父类构造函数传参
      * [详细代码请看:/dart/类/类的继承/类的继承-super关键词的使用-实例化自类给父类构造函数传参.dart](/dart/类/类的继承/类的继承-super关键词的使用-实例化自类给父类构造函数传参.dart)
      * [详细代码请看:/dart/类/类的继承/类的继承-super关键词的使用-实例化自类给父类构造函数传参2.dart](/dart/类/类的继承/类的继承-super关键词的使用-实例化自类给父类构造函数传参2.dart)

    * 类的继承-实例化自类给命名构造函数传参
      * [详细代码请看:/dart/类/类的继承/类的继承-实例化自类给命名构造函数传参.dart](/dart/类/类的继承/类的继承-实例化自类给命名构造函数传参.dart)

    * 类的继承-覆写父类的方法
      * [详细代码请看:/dart/类/类的继承/类的继承-覆写父类的方法.dart](/dart/类/类的继承/类的继承-覆写父类的方法.dart)

    * 自类里面调用父类的方法
      * [详细代码请看:/dart/类/类的继承/自类里面调用父类的方法.dart](/dart/类/类的继承/自类里面调用父类的方法.dart)

  * 抽象类和接口
    * Dart中的抽象类
      * [详细代码请看:/dart/类/抽象类和接口/Dart中的抽象类.dart](/dart/类/抽象类和接口/Dart中的抽象类.dart)

    * Dart中多态
      * [详细代码请看:/dart/类/抽象类和接口/Dart中多态.dart](/dart/类/抽象类和接口/Dart中多态.dart)

    * 接口
      * [详细代码请看:/dart/类/抽象类和接口/接口.dart](/dart/类/抽象类和接口/接口.dart)

    * 接口-文件分离
      * [详细代码请看:/dart/类/抽象类和接口/接口-文件分离.dart](/dart/类/抽象类和接口/接口-文件分离.dart)

    * Dart中implements实现多个接口
      * [详细代码请看:/dart/类/抽象类和接口/Dart中implements实现多个接口.dart](/dart/类/抽象类和接口/Dart中implements实现多个接口.dart)

  * mixins混入
    * Dart中的mixins
      * [详细代码请看:/dart/类/mixins混入/Dart中的mixins.dart](/dart/类/mixins混入/Dart中的mixins.dart)
      * [详细代码请看:/dart/类/mixins混入/Dart中的mixins2.dart](/dart/类/mixins混入/Dart中的mixins2.dart)

    * Dart中的mixins的类型
      * [详细代码请看:/dart/类/mixins混入/Dart中的mixins的类型.dart](/dart/类/mixins混入/Dart中的mixins的类型.dart)

  * 泛型
    * 泛型类
      * [详细代码请看:/dart/类/泛型/泛型类.dart](/dart/类/泛型/泛型类.dart)

    * 泛型方法
      * [详细代码请看:/dart/类/泛型/泛型方法.dart](/dart/类/泛型/泛型方法.dart)

    * 泛型接口
      * [详细代码请看:/dart/类/泛型/泛型接口.dart](/dart/类/泛型/泛型接口.dart)

## 10.库的引入    
  1. Dart中导入自己本地库     
      * [详细代码请看:/dart/库的引入/Dart中导入自己本地库.dart](/dart/库的引入/Dart中导入自己本地库.dart)

  2. 导入系统内置库math库
      * [详细代码请看:/dart/库的引入/导入系统内置库math库.dart](/dart/库的引入/导入系统内置库math库.dart)


# Flutter的学习
## 1. 开发环境
  1. 安装JDK，推荐1.8版本    
      * 下载地址：https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

      * 配置环境变量

  2. 安装Android Studio
      * 下载地址：https://developer.android.google.cn/studio
      * 安装完毕后，在plugins里搜索下载Flutter和Dart安装
      * **注意：最好是用手机热点，电信网下载，不然插件市场无法搜索**

  3. 下载配置 Flutter Sdk
      * 下载地址：https://flutter.dev/docs/development/tools/sdk/releases#windows

      * 配置环境变量

  4. 配置国内镜像的环境变量
      * FLUTTER_STORAGE_BASE_URL: https://storage.flutter-io.cn 
      * PUB_HOSTED_URL: https://pub.flutter-io.cn

  5. 在命令行输入flutter doctor，出现全是√的时候就完成了
  
  6. [详细文档请看:/flutter/01环境搭建/Flutter介绍-Flutter、Windows、Android环境搭建.pdf](/flutter/01环境搭建/Flutter介绍-Flutter、Windows、Android环境搭建.pdf)

## 2. 在vscode中运行flutter项目
  1. 在android studio中新建flutter项目后，把项目放到vscode中，输入命令flutter run即可

## 3. 最简单的例子
  1. helloworld案例，[详细代码请看:/flutter/02最简单的例子/helloworld.dart](/flutter/02最简单的例子/helloworld.dart)
  
  2. 自定义组件, [详细代码请看:/flutter/02最简单的例子/自定义组件.dart](/flutter/02最简单的例子/自定义组件.dart)
  
  3. 封装抽离组件, [详细代码请看:/flutter/02最简单的例子/封装抽离.dart](/flutter/02最简单的例子/封装抽离.dart)
  
  4. MaterialApp&Scaffold完整的组件, [详细代码请看:/flutter/02最简单的例子/MaterialApp&Scaffold.dart](/flutter/02最简单的例子/MaterialApp&Scaffold.dart)

  5. [详细文档请看:/flutter/02最简单的例子/Flutter目录结构介绍、入口、自定义Widget、Center组件、Text组件、MaterialApp组件、Scaffold组件.pdf](/flutter/02最简单的例子/Flutter目录结构介绍、入口、自定义Widget、Center组件、Text组件、MaterialApp组件、Scaffold组件.pdf)

## 4. container与text组件
  1. 普通布局, [详细代码请看:/flutter/03Container&Text/普通布局.dart](/flutter/03Container&Text/普通布局.dart)

  2. 定位布局, [详细代码请看:/flutter/03Container&Text/定位.dart](/flutter/Container&Text/定位.dart)

  3. 旋转组件, [详细代码请看:/flutter/03Container&Text/旋转.dart](/flutter/03Container&Text/旋转.dart)
  
  4. [详细文档请看:/flutter/03Container&Text/Flutter-Container组件、Text组件详解.pdf](/flutter/03Container&Text/Flutter-Container组件、Text组件详解.pdf)
   
## 5. Image图片
  1. 网络图片, [详细代码请看:/flutter/04Image图片/远程图片.dart](/flutter/04Image图片/远程图片.dart)
  
  2. 圆角图片   
     * 使用borderRadius来制作圆角图片, [详细代码请看:/flutter/04Image图片/圆角图片/用borderRadius做圆角图片.dart](/flutter/04Image图片/圆角图片/用borderRadius做圆角图片.dart)
     
     * 使用ClipOval做圆角图片, [详细代码请看:/flutter/04Image图片/圆角图片/ClipOval做圆角图片.dart](/flutter/04Image图片/圆角图片/ClipOval做圆角图片.dart)

  3. 本地图片
     1. 在根目录下新建images文件夹，并在里面新建2.0x（表示二倍图）, 3.0x（三倍图）文件夹，把图片分别放进去
         * [详细代码请看:/flutter/04Image图片/远程图片.dart](/flutter/04Image图片/远程图片.dart)
     
     2. 在根目录下的pubspec.yaml，找到assets:配置图片
         ```
          flutter:
            assets:
            - images/a.jpg
            - images/2.0x/a.jpg
            - images/3.0x/a.jpg
         ```

  4. [详细文档请看:/flutter/04Image图片.pdf](/flutter/04Image图片.pdf)

## 6. listView列表
  * 垂直列表
    * [详细代码请看:/flutter/05listView列表/垂直列表.dart](/flutter/05listView列表/垂直列表.dart)
  
  * 垂直图片列表
    * [详细代码请看:/flutter/05listView列表/垂直图片列表.dart](/flutter/05listView列表/垂直图片列表.dart)
    
    * [详细代码请看:/flutter/05listView列表/垂直图片列表2.dart](/flutter/05listView列表/垂直图片列表2.dart)

  * 水平列表
    * [详细代码请看:/flutter/05listView列表/水平列表.dart](/flutter/05listView列表/水平列表.dart)

  * 水平图片列表
    * [详细代码请看:/flutter/05listView列表/水平图片列表.dart](/flutter/05listView列表/水平图片列表.dart)

## 7. listView动态列表及循环
  1. 使用循环方式遍历列表
     * 使用循环遍历, [详细代码请看:/flutter/06listView动态列表及循环/循环遍历列表.dart](/flutter/06listView动态列表及循环/循环遍历列表.dart)

     * 文件数据引入循环, [详细代码请看:/flutter/06listView动态列表及循环/遍历列表2/文件引入循环列表.dart](/flutter/06listView动态列表及循环/遍历列表2/文件引入循环列表.dart)

     * map循环, [详细代码请看:/flutter/06listView动态列表及循环/遍历列表2/文件引入循环列表2.dart](/flutter/06listView动态列表及循环/遍历列表2/文件引入循环列表2.dart)

  2. 使用ListView.builder遍历列表
     * [详细代码请看:/flutter/06listView动态列表及循环/ListView-builder/demo.dart](/flutter/06listView动态列表及循环/ListView-builder/demo.dart)

     * [详细代码请看:/flutter/06listView动态列表及循环/ListView-builder/封装demo.dart](/flutter/06listView动态列表及循环/ListView-builder/封装demo.dart)

  3. [相关文档请看:/flutter/06listView动态列表及循环/Flutter-ListView组件.pdf](/flutter/06listView动态列表及循环/Flutter-ListView组件.pdf)

## 8. GridView网格列表
  1. crossAxisCount一行多列, [详细代码请看:/flutter/07GridView网格列表/crossAxisCount一行多列.dart](/flutter/07GridView网格列表/crossAxisCount一行多列.dart)
  
  2. 列间距
     * mainAxisSpacing和crossAxisSpacing [详细代码请看:/flutter/07GridView网格列表/mainAxisSpacing和crossAxisSpacing间距.dart](/flutter/07GridView网格列表/mainAxisSpacing和crossAxisSpacing间距.dart)

  3. 布局练习，一行两列，[详细代码请看:/flutter/07GridView网格列表/test.dart](/flutter/07GridView网格列表/test.dart)

  4. **使用GridView-builder循环列表, [详细代码请看:/flutter/07GridView网格列表/GridView-builder循环列表.dart](/flutter/07GridView网格列表/GridView-builder循环列表.dart)**

  5. [详细文档请看:/flutter/07GridView网格列表/flutter-GridView组件以及动态GridView.pdf](/flutter/07GridView网格列表/flutter-GridView组件以及动态GridView.pdf)

## 9. Padding、Row、Column、Expanded
  1. Padding组件，用于组件间的padding值设定
     * [详细代码请看:/flutter/08Padding、Row、Column、Expanded/padding.dart](/flutter/08Padding、Row、Column、Expanded/padding.dart)

  2. Row组件，水平布局
     * [详细代码请看:/flutter/08Padding、Row、Column、Expanded/Row.dart](/flutter/08Padding、Row、Column、Expanded/Row.dart)

  3. Column组件，垂直布局
     * [详细代码请看:/flutter/08Padding、Row、Column、Expanded/Column.dart](/flutter/08Padding、Row、Column、Expanded/Column.dart)

  4. Expanded组件，flex，三个盒子，分别占1分，2分，1分
     * [详细代码请看:/flutter/08Padding、Row、Column、Expanded/Expanded.dart](/flutter/08Padding、Row、Column、Expanded/Expanded.dart)

     * 左侧固定宽带，右侧自适应, [详细代码请看:/flutter/08Padding、Row、Column、Expanded/Expanded2.dart](/flutter/08Padding、Row、Column、Expanded/Expanded2.dart)

  5. 练习
     * 实现以下布局: ![练习1](/flutter/08Padding、Row、Column、Expanded/1.jpg)
       * [详细代码请看:/flutter/08Padding、Row、Column、Expanded/test.dart](/flutter/08Padding、Row、Column、Expanded/test.dart)

  6. [详细文档请看:/flutter/08Padding、Row、Column、Expanded/flutter页面布局Paddiing、Row、Column、Expanded组件详解.pdf](/flutter/08Padding、Row、Column、Expanded/flutter页面布局Paddiing、Row、Column、Expanded组件详解.pdf)

## 10. Stack层叠组件
  1. 只使用alignment,stack里的所有内容位置都变化
     * [详细代码请看:/flutter/09Stack层叠组件/demo1.dart](/flutter/09Stack层叠组件/demo1.dart)
    
     * [详细代码请看:/flutter/09Stack层叠组件/demo2.dart](/flutter/09Stack层叠组件/demo2.dart)

  2. stack结合Align组件
     * [详细代码请看:/flutter/09Stack层叠组件/demo3.dart](/flutter/09Stack层叠组件/demo3.dart)

  3. stack结合Posited组件
     * [详细代码请看:/flutter/09Stack层叠组件/demo4.dart](/flutter/09Stack层叠组件/demo4.dart)

  4. [详细文档请看:/flutter/09Stack层叠组件/Stack层叠组件-Stack与Align、Stack与Positioned实现定位布局.pdf](/flutter/09Stack层叠组件/Stack层叠组件-Stack与Align、Stack与Positioned实现定位布局.pdf)

## 11. AspectRatio宽高比组件与Card组件
  1. AspectRatio宽高比组件，相对于父元素
     * [详细代码请看:/flutter/10AspectRatio宽高比组件与Card组件/AspectRatio.dart](/flutter/10AspectRatio宽高比组件与Card组件/AspectRatio.dart)

  2. Card组件
     * [详细代码请看:/flutter/10AspectRatio宽高比组件与Card组件/Card.dart](/flutter/10AspectRatio宽高比组件与Card组件/Card.dart)
     
  3. 练习
     * 实现以下布局: ![练习1](/flutter/10AspectRatio宽高比组件与Card组件/2.jpg)
       * [详细代码请看:/flutter/10AspectRatio宽高比组件与Card组件/test.dart](/flutter/10AspectRatio宽高比组件与Card组件/test.dart)

  4. [详细文档请看:/flutter/10AspectRatio宽高比组件与Card组件/Flutter-AspectRatio、Card卡片组件.pdf](/flutter/10AspectRatio宽高比组件与Card组件/Flutter-AspectRatio、Card卡片组件.pdf)

## 12. Wrap组件，超过一行之后，自动换行
  1. 横轴的换行
     * [详细代码请看:/flutter/11Wrap组件/WrapDemo.dart](/flutter/11Wrap组件/WrapDemo.dart)

  2. 纵轴的换行
     * [详细代码请看:/flutter/11Wrap组件/WrapDemo2.dart](/flutter/11Wrap组件/WrapDemo2.dart)

  3. [详细文档请看:/flutter/11Wrap组件/Flutter页面布局Wrap组件.pdf](/flutter/11Wrap组件/Flutter页面布局Wrap组件.pdf)

## 13. 有状态组件，页面改变数据
  * [详细代码请看:/flutter/12有状态组件,页面改变数据/demo1.dart](/flutter/12有状态组件,页面改变数据/demo1.dart)

  * [详细代码请看:/flutter/12有状态组件,页面改变数据/demo2.dart](/flutter/12有状态组件,页面改变数据/demo2.dart)

## 14. BottomNavigationBar底部导航栏
  1. [详细代码请看:/flutter/13BottomNavigationBar底部导航栏/demo.dart](/flutter/13BottomNavigationBar底部导航栏/demo.dart)

  2. [详细文档请看:/flutter/13BottomNavigationBar底部导航栏/BottomNavigationBar-自定义底部导航条、以及实现页面切换.pdf](/flutter/13BottomNavigationBar底部导航栏/BottomNavigationBar-自定义底部导航条、以及实现页面切换.pdf)

## 15. 路由、路由跳转、路由跳转传值
  1. 路由跳转，使用Navigator.push
     * [详细代码请看:/flutter/14路由、路由跳转、路由跳转传值、命名路由、命名路由传值/路由跳转/home.dart](/flutter/14路由、路由跳转、路由跳转传值、命名路由、命名路由传值/路由跳转/home.dart)

  2. 路由传值
     * [详细代码请看:/flutter/14路由、路由跳转、路由跳转传值、命名路由、命名路由传值/路由跳转传值/home.dart](/flutter/14路由、路由跳转、路由跳转传值、命名路由、命名路由传值/路由跳转传值/home.dart)

  3. 命名路由跳转,使用Navigator.pushNamed
     * [详细代码请看:/flutter/14路由、路由跳转、路由跳转传值、命名路由、命名路由传值/命名路由跳转/main.dart](/flutter/14路由、路由跳转、路由跳转传值、命名路由、命名路由传值/命名路由跳转/main.dart)

  4. 命名路由跳转传值,使用onGenerateRoute
     * [详细代码请看:/flutter/14路由、路由跳转、路由跳转传值、命名路由、命名路由传值/命名路由跳转传值/main.dart](/flutter/14路由、路由跳转、路由跳转传值、命名路由、命名路由传值/命名路由跳转传值/main.dart)

  5. 在命名路由跳转传值基础上进行封装，抽离路由。production.dart包含有状态组件的传值
     * [详细代码请看:/flutter/14路由、路由跳转、路由跳转传值、命名路由、命名路由传值/命名路由封装/main.dart](/flutter/14路由、路由跳转、路由跳转传值、命名路由、命名路由传值/命名路由封装/main.dart)

  6. [详细文档请看:/flutter/14路由、路由跳转、路由跳转传值、命名路由、命名路由传值/Flutter中的普通路由、普通路由传值、命名路由、命名路由传值.pdf](/flutter/14路由、路由跳转、路由跳转传值、命名路由、命名路由传值/Flutter中的普通路由、普通路由传值、命名路由、命名路由传值.pdf)

## 16. 替换路由
  1. 使用Navigator.pushNamed这种跳转，返回的时候只能返回上一级
     * [详细代码请看:/flutter/15替换路由/普通路由返回上一级/main.dart](/flutter/15替换路由/普通路由返回上一级/main.dart)

  2. 使用Navigator.pushReplacementNamed跳转，可以返回到第一级
     * [详细代码请看:/flutter/15替换路由/替换路由/main.dart](/flutter/15替换路由/替换路由/main.dart)

  3. 普通路由跳转，返回到第一级，使用Navigator.pushAndRemoveUntil
     * [详细代码请看:/flutter/15替换路由/普通路由返回到根目录/main.dart](/flutter/15替换路由/普通路由返回到根目录/main.dart)

  4. 普通路由跳转，返回到指定目录
     * [详细代码请看:/flutter/15替换路由/普通路由返回到指定目录/main.dart](/flutter/15替换路由/普通路由返回到指定目录/main.dart)

## 17. 自定义头部导航栏
  1. 设置导航栏的文字，图标
     * [详细代码请看:/flutter/16自定义头部导航栏/demo.dart](/flutter/16自定义头部导航栏/demo.dart)

  2. 顶部导航栏设置选项卡
     * [详细代码请看:/flutter/16自定义头部导航栏/导航栏选项卡.dart](/flutter/16自定义头部导航栏/导航栏选项卡.dart)

  3. 有底部导航栏的时候增加顶部选项卡
     * [详细代码请看:/flutter/16自定义头部导航栏/有底部导航栏的时候增加顶部选项卡/main.dart](/flutter/16自定义头部导航栏/有底部导航栏的时候增加顶部选项卡/main.dart)
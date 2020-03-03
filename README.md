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

  5. [详细文档请看:/flutter/15替换路由/Flutter中的路由-pushReplacementNamed路由替换、pushNamedAndRemoveUntil返回到根路由.pdf](/flutter/15替换路由/Flutter中的路由-pushReplacementNamed路由替换、pushNamedAndRemoveUntil返回到根路由.pdf)

## 17. 自定义头部导航栏
  1. 设置导航栏的文字，图标
     * [详细代码请看:/flutter/16自定义头部导航栏/demo.dart](/flutter/16自定义头部导航栏/demo.dart)

  2. 顶部导航栏设置选项卡
     * [详细代码请看:/flutter/16自定义头部导航栏/导航栏选项卡.dart](/flutter/16自定义头部导航栏/导航栏选项卡.dart)

     * 使用tabController的好处是，可以给选项卡添加事件 [详细代码请看:/flutter/16自定义头部导航栏/导航栏选项卡2.dart](/flutter/16自定义头部导航栏/导航栏选项卡2.dart)

  3. 有底部导航栏的时候增加顶部选项卡
     * [详细代码请看:/flutter/16自定义头部导航栏/有底部导航栏的时候增加顶部选项卡/main.dart](/flutter/16自定义头部导航栏/有底部导航栏的时候增加顶部选项卡/main.dart)

  4. 使用tabController渲染顶部导航栏，使用tabController的好处是，可以给选项卡添加事件
     * [详细代码请看:/flutter/16自定义头部导航栏/使用tabController渲染顶部导航栏/main.dart](/flutter/16自定义头部导航栏/使用tabController渲染顶部导航栏/main.dart)

  5. [详细文档请看:/flutter/16自定义头部导航栏/Flutter-AppBar自定义顶部导航按钮、图标颜色以及TabBar定义顶部Tab切换.pdf](/flutter/16自定义头部导航栏/Flutter-AppBar自定义顶部导航按钮、图标颜色以及TabBar定义顶部Tab切换.pdf)

## 18. Draw抽屉组件
  1. DrawHeader抽屉头部自定义组件
     * [详细代码请看:/flutter/17Draw抽屉组件/抽屉、DrawHeader头部.dart](/flutter/17Draw抽屉组件/抽屉、DrawHeader头部.dart)

  2. UserAccountsDrawerHeader头部组件
     * [详细代码请看:/flutter/17Draw抽屉组件/抽屉、UserAccountsDrawerHeader头部.dart](/flutter/17Draw抽屉组件/抽屉、UserAccountsDrawerHeader头部.dart)

  3. 抽屉中点击事件，跳转，使用onTap
     * [详细代码请看:/flutter/17Draw抽屉组件/抽屉点击跳转/main.dart](/flutter/17Draw抽屉组件/抽屉点击跳转/main.dart.dart)

  4. [详细文档请看:/flutter/17Draw抽屉组件/Flutter-Drawer侧边栏以及侧边栏内容布局.pdf](/flutter/17Draw抽屉组件/Flutter-Drawer侧边栏以及侧边栏内容布局.pdf)

## 19. 按钮组件
  1. RaisedButton：凸起的按钮，其实就是 Material Design 风格的 Button
  2. FlatButton：扁平化的按钮
  3. OutlineButton：线框按钮
  4. IconButton：图标按钮
  5. ButtonBar:按钮组
  6. FloatingActionButton:浮动按钮

  7. [详细代码请看:/flutter/18按钮组件/demo.dart](/flutter/18按钮组件/demo.dart)

  8. 实现以下效果: ![底部浮动按钮](/flutter/18按钮组件/4.jpg)
     * [详细代码请看:/flutter/18按钮组件/浮动按钮/main.dart](/flutter/18按钮组件/浮动按钮/main.dart)

  9. [详细文档请看:/flutter/18按钮组件/Flutter-FloatingActionButton结合底部tab实现中间凸起按钮.pdf](/flutter/18按钮组件/Flutter-FloatingActionButton结合底部tab实现中间凸起按钮.pdf)

  10. [详细文档请看:/flutter/18按钮组件/Flutter中的按钮组件.pdf](/flutter/18按钮组件/Flutter中的按钮组件.pdf)

## 20. TextField表单组件、Checkbox复选框、Radio单选框
  1. 布局，[详细代码请看:/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/demo.dart](/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/demo.dart)

  2. 设置初始值以及修改, [详细代码请看:/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/表单的赋值和修改.dart](/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/表单的赋值和修改.dart)

  3. checkbox布局和修改值, [详细代码请看:/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/checkbox.dart](/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/checkbox.dart)

  4. CheckboxListTile,复选框列表，[详细代码请看:/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/CheckboxListTile.dart](/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/CheckboxListTile.dart)

  5. Radio布局和修改值，[详细代码请看:/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/Radio.dart](/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/Radio.dart)

  6. RadioListTile单选列表布局，[详细代码请看:/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/RadioListTile.dart](/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/RadioListTile.dart)

  7. Switch开关组件，[详细代码请看:/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/Switch.dart](/flutter/19TextField表单组件、Checkbox复选框、Radio单选框/Switch.dart)

  8. [详细文档请看:/flutter/19按钮组件/Flutter中的表单.pdf](/flutter/18按钮组件/Flutter中的表单.pdf)

## 21. Flutter日期和时间戳、格式化日期库、Future异步、官方自带日期组件showDatePicker 时间组件showTimePicker 以及国际化
  1. flutter日期间的相互转换
     * 获取时间：DateTime.now();
      ```
        var now = DateTime.now();
        print(now); // 获取当前时间  2020-02-22 18:51:27.642596
      ```

     * 时间转换为时间戳：DateTime.now().millisecondsSinceEpoch
      ```
        var now = DateTime.now();
        print(now.millisecondsSinceEpoch); // 日期转换为时间戳  1582368687642
      ```

     * 时间戳转换为时间: DateTime.fromMillisecondsSinceEpoch()
      ```
        print(DateTime.fromMillisecondsSinceEpoch(1582368144393)); // 将时间戳转换为时间 2020-02-22 18:42:24.393
      ```

  2. 时间的转换
     * 使用第三方库dateformat
      1. 在pubspec.yaml中配置dateformat
          ```
            dependencies:
              date_format: ^1.0.8
          ```

      2. 引入包并使用
          ```
            import 'package:date_format/date_format.dart';

            print(formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]));
          ```

      3. [详细文档请看:https://pub.dev/packages/date_format](https://pub.dev/packages/date_format)

      4. [详细代码请看:/flutter/20Flutter日期和时间戳、格式化日期库、Future异步、官方自带日期组件showDatePicker时间组件showTimePicker以及国际化/demo.dart](/flutter/20Flutter日期和时间戳、格式化日期库、Future异步、官方自带日期组件showDatePicker时间组件showTimePicker以及国际化/demo.dart)

  3. flutter自带日期控件,包括修改值
     * [详细代码请看:/flutter/20Flutter日期和时间戳、格式化日期库、Future异步、官方自带日期组件showDatePicker时间组件showTimePicker以及国际化/flutter自带日期控件/main.dart](/flutter/20Flutter日期和时间戳、格式化日期库、Future异步、官方自带日期组件showDatePicker时间组件showTimePicker以及国际化/flutter自带日期控件/main.dart)

  4. flutter自带时间控件,包括修改值
     * [详细代码请看:/flutter/20Flutter日期和时间戳、格式化日期库、Future异步、官方自带日期组件showDatePicker时间组件showTimePicker以及国际化/flutter自带时间控件/main.dart](/flutter/20Flutter日期和时间戳、格式化日期库、Future异步、官方自带日期组件showDatePicker时间组件showTimePicker以及国际化/flutter自带时间控件/main.dart)

  5. flutter设置国际化
     1. 配置flutter_localizations依赖
        ```
          找到pubspec.yaml配置flutter_localizations
          dependencies:
            flutter:
              sdk: flutter
            flutter_localizations:
              sdk: flutter
        ```

      2. 导入国际化的包 flutter_localizations
          ```
            import 'package:flutter_localizations/flutter_localizations.dart'; 
          ```

      3. 设置国际化
          ```
            void main() {
              runApp(
                new MaterialApp(
                  title: 'app',
                  theme: new ThemeData(
                    primaryColor: Colors.white,
                  ),
                  home: new MyLoginWidget(),
                  localizationsDelegates: [
                    //此处
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                  ],
                  supportedLocales: [
                    //此处
                    const Locale('zh', 'CH'),
                    const Locale('en', 'US'),
                  ],
                ),
              );
            }
          ```

      4. 要显示中文的控件设置
          ```
            _showDatePicker() async{
              var date =await showDatePicker(
                context: context,
                initialDate: _datetime,
                firstDate:DateTime(1900),
                lastDate:DateTime(2050),
                locale: Locale('zh'),    
              );
              if(date==null) return;
              print(date);
              setState(() {
                _datetime=date;
              });
            }
          ```

      5. [详细文档请看:http://bbs.itying.com/topic/5cfb2a12f322340b2c90e764](http://bbs.itying.com/topic/5cfb2a12f322340b2c90e764)

## 22. 第三方日期控件flutter_cupertino_date_picker
  1. 第一步： 在pubspec.yaml配置flutter_cupertino_date_picker
     ```
      dependencies:
        flutter_cupertino_date_picker: ^1.0.12
     ```

  2. 第二步：导入控件,在Home.dart中引入包
     ```
      import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
     ```

  3. 结合文档，写入代码：
     ```
      DatePicker.showDatePicker(
        context,
        pickerTheme: DateTimePickerTheme(
          showTitle: _showTitle,
          confirm: Text('确定', style: TextStyle(color: Colors.red)),
          cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
        ),
        minDateTime: DateTime.parse(minDate),
        maxDateTime: DateTime.parse(maxDate),
        initialDateTime: _dateTime,
        dateFormat: _format,
        locale: DateTimePickerLocale.zh_cn,
        onClose: () => print("----- onClose -----"),
        onCancel: () => print('onCancel'),
        onChange: (dateTime, List<int> index) {
          setState(() {
            _dateTime = dateTime;
          });
        },
        onConfirm: (dateTime, List<int> index) {
          setState(() {
            _dateTime = dateTime;
          });
        },
      );
     ```

  4. [详细文档请看:https://pub.dev/packages/flutter_cupertino_date_picker](https://pub.dev/packages/flutter_cupertino_date_picker)
  
  5. [该控件的github地址:https://github.com/dylanwuzh/flutter-cupertino-date-picker](https://github.com/dylanwuzh/flutter-cupertino-date-picker)

  6. [详细代码请看:/flutter/21第三方日期控件/main.dart](/flutter/21第三方日期控件/main.dart)
     
## 23. 第三方轮播图组件flutter-swiper
  1. 第一步： 在pubspec.yaml配置flutter-swiper
     ```
      dependencies:
        flutter_swiper: ^1.1.6
     ```

  2. 第二步：导入控件,在demo.dart中引入包
     ```
      import 'package:flutter_swiper/flutter_swiper.dart';
     ```

  3. 结合文档，写入代码：
     ```
        body: new Swiper(
          itemBuilder: (BuildContext context,int index){
            return new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);
          },
          itemCount: 3,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
        );
     ```

  4. [详细文档请看:https://pub.dev/packages/flutter_swiper](https://pub.dev/packages/flutter_swiper)

  5. [详细代码请看:/flutter/22第三方轮播图组件/demo.dart](/flutter/22第三方轮播图组件/demo.dart)

## 24. 弹窗组件AlertDialog、SimpleDialog、showModalBottomSheet、flutter-toast第三方库
  1. AlertDialog
  2. SimpleDialog
  3. showModalBottomSheet
  4. flutter-toast
  5. [详细代码请看:/flutter/23弹窗组件AlertDialog、SimpleDialog、showModalBottomSheet、flutter-toast第三方库/main.dart](/flutter/23弹窗组件AlertDialog、SimpleDialog、showModalBottomSheet、flutter-toast第三方库/main.dart)

## 25. 自定义弹窗
  1. 其实就是继承Dialog类

  2. 设置定时器Timer.periodic，使用前需要引入 import 'dart:async';

  3. [详细代码请看:/flutter/24自定义弹窗、定时器/main.dart](/flutter/24自定义弹窗、定时器/main.dart)

## 26. 使用http库get、post获取数据
  1. Map与json之间的转换
     * Map转换为json,使用json.encode(data)
        ```
          import 'dart:convert';

          var mapData = {"name": "张三", "age": "20"}
          var strData = '{"name": "张三", "age": "20"}'
          print(json.encode(mapData))
        ```

     * json转换为Map,使用json.decode(data)
        ```
          import 'dart:convert';

          var mapData = {"name": "张三", "age": "20"}
          var strData = '{"name": "张三", "age": "20"}'
          print(json.decode(strData))
        ```

  2. http库get获取数据
     * [详细代码请看:/flutter/25使用http库get、post获取数据/get.dart](/flutter/25使用http库get、post获取数据/get.dart)

  3. http库post获取数据
     * [详细代码请看:/flutter/25使用http库get、post获取数据/post.dart](/flutter/25使用http库get、post获取数据/post.dart)

## 27. flutter状态管理库Provide
  1. 下载安装provide
     ```
      dependencies:
        provide: ^1.0.2
     ```

  2. 引入
     ```
      import 'package:provide/provide.dart';
     ```

  3. 创建provide
     ```
      新建一个provide文件夹，然后再里边新建一个demo.dart 文件.代码如下:
        import 'package:flutter/material.dart';

        class Demo with ChangeNotifier{
          int count = 0;

          add() {
            count ++;
            notifyListeners(); // 通知相关组件，内容改了
          }
        }
     ```

  4. 将状态放到最顶层main.dart中
     ```
      import 'package:provide/provide.dart';
      import './provide/counter.dart';

      void main(){
        var demo = Demo();
        var providers = Providers();
        providers..provide(Provider<Demo>.value(demo));
        runApp(
          ProviderNode(child: MyApp(), providers: providers)
        );
      }
     ```

  5. 在category/index.dart中获取状态,使用Provide的builder方法
     ```
      class Number extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
          return Container(
            margin: EdgeInsets.only(top: 200),
            child: Provide<Demo>(
              builder: (context, child, item){
                return Text('${item.count}');
              }
            )
          );
        }
      }
     ```

  6. 修改状态,使用provide的value方法调用写好的add
      ```
        class MyButton extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
            return Container(
              child: RaisedButton(
                onPressed: (){
                  Provide.value<Demo>(context).add();
                },
                child: Text('递增'),
              ),
            );
          }
        }
      ```

  7. [详细代码请看:/flutter/27flutter状态管理Provide/main.dart](/flutter/27flutter状态管理Provide/main.dart)

## 28. 保持页面状态
  * AutomaticKeepAliveClientMixin这个Mixin就是Flutter为了保持页面设置的。哪个页面需要保持页面状态，就在这个页面进行混入。

  * 使用条件：   
    1. 使用的页面必须是StatefulWidget,如果是StatelessWidget是没办法办法使用的。
    2. 其实只有两个前置组件才能保持页面状态：PageView和IndexedStack。
    3. 重写wantKeepAlive方法，如果不重写也是实现不了的。

  * 使用步骤：
    1. 需求是记住首页的状态，不要让他每次切换都调接口，在home/index.dart中
        ```
          混入AutomaticKeepAliveClientMixin，重写wantKeepAlive方法

          class HomePage extends StatefulWidget {
            @override
            _HomePageState createState() => _HomePageState();
          }

          class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {
              @override
            bool get wantKeepAlive => true;
        ```

    2. 在他的上层通过IndexedStack包裹起来(pages/index_page.dart)
        ```
          body: IndexedStack(
            index: currentIndex,
            children: tabBodies,
          ),
        ```

  * [详细代码请看:/flutter/28保持页面状态/main.dart](/flutter/28保持页面状态/main.dart)

## 29. 使用flutter-swiper制作引导页
   * [详细代码请看:/flutter/29引导页/main.dart](/flutter/29引导页/main.dart)


# flutter打包成APK
  1. 配置APP的图标
      * 想配置APP的图片，你需要找到下面的目录：项目根目录/android/app/src/main/res/,进去之后，会看到mipmap-hdpi、mipmap-mdpi、mipmap-xhdpi、mipmap-xxhdpi、mipmap-xxxhdpi这5个文件夹，将你的图标放进去，注意图标的名称必须相同

      * 找到/android/app/src/main/AndroidManifest.xml文件，可以配置APP的名称、图标
        ```
          android:label="flutter_app"   //配置APP的名称，支持中文
          android:icon="@mipmap/ic_launcher" //APP图标的文件名称
        ```

  2. 生成keystore
      * 在项目当前目录下输入命令： keytool -genkey -v -keystore C:/Users/ASUS/Desktop/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key

  3. 在Android文件夹下，新建key.properties，并写入前面的密码
        ```
          storePassword=123123
          keyPassword=123123
          keyAlias=key
          storeFile=C:/Users/ASUS/Desktop/key.jks
        ```

  4. 找到android/app/build.gradle文件，修改此文件
      * ![修改1](/flutter/26flutter打包成apk/1.jpg)
      * ![修改2](/flutter/26flutter打包成apk/2.jpg)

  5. 以上都搞定之后，执行flutter build apk

  6. 如果打包成功了，会在build/app/outputs/apk/release文件夹下，生成app-release.apk，然后在当前目录下执行flutter install就打包完成

  7. [详细文档请看:https://jspang.com/detailed?id=44#toc324](https://jspang.com/detailed?id=44#toc324)

  8. [详细文档请看:https://blog.csdn.net/duo_shine/article/details/81382757](https://blog.csdn.net/duo_shine/article/details/81382757)

# flutter适配不同设备尺寸
  * 使用插件：flutter_screenutil
     * 下载：
        ```
        在pubslipec.yaml里：

          dependencies:
            flutter_screenutil: ^1.0.2
        ```

     * 引入：
        ```
          import 'package:flutter_screenutil/flutter_screenutil.dart';
        ```

     * 使用：
        ```
          1.在根组件初始化设计尺寸：ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: true);

          2. 在需要的地方，使用setHeight(), setWisth()设置宽高
          height: ScreenUtil().setHeight(333),
        ```
        
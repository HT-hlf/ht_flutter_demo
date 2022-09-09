import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() => runApp( new MaterialApp(
  title: 'AppBar应用按钮示例',
  home: new MyApp(),
)
  ,);
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //应用程序整体主题的亮度
        brightness: Brightness.light,
        //App主要部分的背景色
        primaryColor: Colors.white,
        //前景色（文本、按钮等）
        accentColor: Colors.white,
      ),
      home: new MaterialApp(
        //添加DefaultTabController关联TabBar及TabBarView
        theme: ThemeData(
          //应用程序整体主题的亮度
          brightness: Brightness.light,
          //App主要部分的背景色
          primaryColor: Colors.white,
          //前景色（文本、按钮等）
          accentColor: Colors.white,
        ),
        home: new DefaultTabController(
          length: items.length,//传入选项卡数量

          child:  Scaffold(
              appBar:  AppBar(
                title:
                new Container(
                  //添加装饰效果
                  decoration: new BoxDecoration(
                    color: Colors.white,
                  ),
                  //子元素指定为一个垂直水平嵌套布局的组件
                  child: new Column(
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          //使用Expanded防止内容溢出
                          new Expanded(
                            child: new Container(
                              width: 30,
                              height: 30.0,
                              //添加边框样式
                              decoration: new BoxDecoration(
                                //上下左右边框设置为宽度10.0 颜色为蓝灰色
                                border: new Border.all(width: 1.4, color: Colors.grey),
                                //上下左右边框弧度设置为8.0
                                borderRadius:
                                const BorderRadius.all(const Radius.circular(6.0)),

                              ),
                              //上下左右增加边距
                              margin: const EdgeInsets.fromLTRB(0.0, 13, 0.0,13 ),
                              child: new Image.asset('images/0.jpg'),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                actions: <Widget>[IconButton(
                  icon: Icon(Icons.alarm_add),
                  tooltip: '学习清单',
                  onPressed: (){},
                ),

                  IconButton(
                    icon: Icon(Icons.assignment),
                    tooltip: '学习清单',
                    onPressed: (){},
                  ),
                ],
                bottom: new TabBar(
                  isScrollable: false,//设置为可以滚动
                  tabs: items.map((ItemView item) {//迭代添加选项卡子项
                    return new Tab(
                      text: item.title,
                    );
                  }).toList(),
                ),
              ),
              //添加选项卡视图
              body:   MyHomePage()

          ),
        ),
      ),

    ) ;
  }


}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 3;//当前选中项的索引
  final _widgetOptions = [
    Container(
      //添加装饰效果
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      //子元素指定为一个垂直水平嵌套布局的组件
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              //使用Expanded防止内容溢出
              new Expanded(
                child: new Container(
                  width: 0,
                  height: 569.0,
                  //添加边框样式
                  decoration: new BoxDecoration(
                    //上下左右边框设置为宽度10.0 颜色为蓝灰色
                    border: new Border.all(width: 0, color: Colors.grey),
                    //上下左右边框弧度设置为8.0
                    borderRadius:
                    const BorderRadius.all(const Radius.circular(0)),

                  ),
                  //上下左右增加边距
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: new Image.asset('images/1.jpg'),
                ),
              ),
            ],
          ),

        ],
      ),
    ),
    Container(
      //添加装饰效果
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      //子元素指定为一个垂直水平嵌套布局的组件
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              //使用Expanded防止内容溢出
              new Expanded(
                child: new Container(
                  width: 0,
                  height: 569.0,
                  //添加边框样式
                  decoration: new BoxDecoration(
                    //上下左右边框设置为宽度10.0 颜色为蓝灰色
                    border: new Border.all(width: 0, color: Colors.grey),
                    //上下左右边框弧度设置为8.0
                    borderRadius:
                    const BorderRadius.all(const Radius.circular(0)),

                  ),
                  //上下左右增加边距
                  margin: const EdgeInsets.fromLTRB(0.0, 0 ,0.0,0 ),
                  child: new Image.asset('images/2.jpg'),
                ),
              ),
            ],
          ),

        ],
      ),
    ),
    Container(
      //添加装饰效果
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      //子元素指定为一个垂直水平嵌套布局的组件
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              //使用Expanded防止内容溢出
              new Expanded(
                child: new Container(
                  width: 0,
                  height: 569.0,
                  //添加边框样式
                  decoration: new BoxDecoration(
                    //上下左右边框设置为宽度10.0 颜色为蓝灰色
                    border: new Border.all(width: 0, color: Colors.grey),
                    //上下左右边框弧度设置为8.0
                    borderRadius:
                    const BorderRadius.all(const Radius.circular(0)),

                  ),
                  //上下左右增加边距
                  margin: const EdgeInsets.fromLTRB(0.0, 0 ,0.0,0 ),
                  child: new Image.asset('images/3.jpg'),
                ),
              ),
            ],
          ),

        ],
      ),
    ),
    Container(
      //添加装饰效果
      decoration: new BoxDecoration(
        color: Colors.white,
      ),
      //子元素指定为一个垂直水平嵌套布局的组件
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              //使用Expanded防止内容溢出
              new Expanded(
                child: new Container(
                  width: 0,
                  height: 569.0,
                  //添加边框样式
                  decoration: new BoxDecoration(
                    //上下左右边框设置为宽度10.0 颜色为蓝灰色
                    border: new Border.all(width: 0, color: Colors.grey),
                    //上下左右边框弧度设置为8.0
                    borderRadius:
                    const BorderRadius.all(const Radius.circular(0)),

                  ),
                  //上下左右增加边距
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: new Image.asset('images/4.jpg'),
                ),
              ),
            ],
          ),

        ],
      ),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(

          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        //底部导航按钮 包含图标及文本

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: '增加',
          child: Icon(Icons.add,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.chat,), title: Text('首页'),backgroundColor: Colors.grey ),
            BottomNavigationBarItem(icon: Icon(Icons.local_activity), title: Text('会员'),backgroundColor: Colors.grey),
            BottomNavigationBarItem(icon: Icon(Icons.message), title: Text('通知'),backgroundColor: Colors.grey),
            BottomNavigationBarItem(icon: Icon(Icons.account_box), title: Text('我的'),backgroundColor: Colors.grey),

          ],
          currentIndex: _selectedIndex,//当前选中项的索引
          fixedColor: Colors.black,
          //选项中项的颜色
          onTap: _onItemTapped,//选择按下处理
        ),
        backgroundColor: Colors.white
    );

  }


  //选择按下处理 设置当前索引为index值
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _MyHomePageState1 createState() => _MyHomePageState1();
}
class  _MyHomePageState1 extends StatelessWidget {
  @override
 Widget build(BuildContext context) {

    return new Scaffold(
      //头部元素 比如：左侧返回按钮 中间标题 右侧菜单
      appBar: AppBar(

      ),
      //视图内容部分
      body: Center(
        child: Text('Scaffold'),
      ),
      //底部导航栏
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 50.0,),
      ),
      //添加FAB按钮
      floatingActionButton: FloatingActionButton(
        tooltip: '增加',
        child: Icon(Icons.add_circle),
        onPressed: () {
        },
      ),
      //FAB按钮居中展示
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}class ItemView {
  const ItemView({ this.title });//构造方法
  final String title;//标题


}

//选项卡的类目
const List<ItemView> items = const <ItemView>[
  const ItemView(title: '关注',),
  const ItemView(title: '推荐',),
  const ItemView(title: '热榜',),
];


//被选中的视图
class SelectedView extends StatelessWidget {
  const SelectedView({ Key key, this.item }) : super(key: key);

  //视图数据
  final ItemView item;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.max,//垂直方向最小化处理
          crossAxisAlignment: CrossAxisAlignment.center,//水平方向居中对齐
          children: <Widget>[
            new Text(item.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
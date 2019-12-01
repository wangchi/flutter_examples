import 'package:flutter/material.dart';
// import 'package:flutter_tutorials/demos/hello.dart';
// import 'package:flutter_tutorials/demos/video.dart';
// import 'package:flutter_tutorials/demos/listview.dart';
import 'package:flutter_tutorials/demos/layoutdemo.dart';
// import 'package:flutter_tutorials/demos/flow_layout_demo.dart';
// import 'package:flutter_tutorials/demos/flow_layout_demo2.dart';
// import 'package:flutter_tutorials/demos/waterfall_demo.dart';
// import 'package:flutter_tutorials/demos/waterfall_demo2.dart';
// import 'package:flutter_tutorials/demos/waterfall_demo3.dart';
// import 'package:flutter_tutorials/demos/staggered.dart';
// import 'package:flutter_tutorials/demos/sliver_staggered_grid_demo.dart';
// import 'package:flutter_tutorials/demos/bottomnavigationbar_demo.dart';
// import 'package:flutter_tutorials/pages/about.dart';
// import 'package:flutter_tutorials/demos/tabbar_demo.dart';
// import 'package:flutter_tutorials/demos/tabbar_without_title_demo.dart';
// import 'package:flutter_tutorials/demos/sliver_demo.dart';
// import 'package:flutter_tutorials/demos/sliver_tabbar_demo.dart';
// import 'package:flutter_tutorials/demos/slivers/sliver_appbar_demo.dart';
// import 'package:flutter_tutorials/demos/slivers/sliver_persistent_header_demo.dart';
// import 'package:flutter_tutorials/demos/stick_header_demo.dart';
// import 'package:flutter_tutorials/demos/lazyload_image.dart';
// import 'package:flutter_tutorials/demos/loading.dart';
// import 'package:flutter_tutorials/demos/get_image_size.dart';
// import 'package:flutter_tutorials/demos/staggered_grid_view.dart';
// import 'package:flutter_tutorials/screens/home.dart';

import 'package:flutter_tutorials/routes.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
// import 'package:flutter_tutorials/store/store.dart';

enum Actions { Increment, Decrement }

int counterReducer(int state, dynamic action) {
  if (action == 'Increment') {
    return state + 1;
  }

  if (action == 'Decrement') {
    return state - 1;
  }

  return state;
}

void main() {
  final store = new Store<int>(counterReducer, initialState: 0);
  // final store = new Store<MainState>(mainReducer, initialState: MainState.initial());
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  MyApp({Key key, this.store}) : super(key: key);

  final Store<int> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromRGBO(212, 61, 61, 1.0),
        ),
        routes: routes,
      ),
    );
  }

  /*
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.green
        // primaryColor: Colors.white
        primaryColor: Color.fromRGBO(212, 61, 61, 1.0)
      ),
      routes: routes
      // home: Home(),
      // home: AppBarDemo(),
      // home: TabBarDemo(),
      // home: LazyloadImageDemo(),
      // home: LoadingDemo(),
      // home: GetImageSizeDemo(),
      // home: StaggeredGridViewDemo(),
      // home: Staggered(),
      // home: SliverStaggeredGridDemo(),
      // home: TabBarWithoutTitleDemo(),
      // home: DrawerDemo(),
      // home: BottomNavigationBarDemo(),
      // home: MyLayoutDemo(),
      // home: FlowLayoutDemo(),
      // home: WaterfallDemo3(),
      // home: SliverDemo(),
      // home: SliverTabBarDemo(),
      // home: StickHeaderDemo(),
      // home: SliverAppBarDemo(),
      // home: SliverPersistentHeaderDemo(),

      // routes: <String, WidgetBuilder> {
      //   '/about_page': (BuildContext context) => AboutPage(),
      // },
    );
  }
  */
}

// home: DrawerDemo()
class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Flutter Tutorials'),
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   tooltip: 'Menu',
        //   onPressed: () => debugPrint('Menu button pressed!'),
        // ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button pressed!'),
          ),
        ],
      ),
      body: Center(child: Text('DrawerDemo', style: TextStyle(fontSize: 32.0))),
      // drawer: Container(
      //   color: Colors.white,
      //   padding: EdgeInsets.all(8.0),
      //   width: 200.0,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text('drawer')
      //     ]
      //   ),
      // ),
      // endDrawer: Text('endDrawer'),
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
            child: Text('BluesDari'),
            decoration: BoxDecoration(color: Colors.grey[100])),
        // UserAccountsDrawerHeader(
        //   decoration: new BoxDecoration(
        //     image: new DecorationImage(
        //       image: new NetworkImage('https://tva3.sinaimg.cn/crop.0.0.640.640.640/a1d3feabjw1eca1gkmhz8j20hs0hswfn.jpg'),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        //   accountName: new Text('walkerbe'),
        //   accountEmail: new Text('hiwangchi@gmail.com'),
        //   currentAccountPicture: new CircleAvatar(
        //     backgroundImage: new NetworkImage('https://tva2.sinaimg.cn/crop.0.0.640.640.180/9e5b07c7jw8f014yvcyjbj20hs0hs3z4.jpg'),
        //   ),
        // ),
        // ListTile(
        //   title: Text('Favourite'),
        //   leading: Icon(Icons.favorite),
        // ),
        // ListTile(
        //   title: Text('About'),
        //   leading: Icon(Icons.people),
        // ),
        // ListTile(
        //   title: Text('Settings'),
        //   leading: Icon(Icons.settings),
        //   onTap: () => Navigator.pop(context),
        // )
      ])),
    );
  }
}

// home: BottomNavigatorDemo()
// class BottomNavigatorDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBarDemo();
//   }
// }

// home: MyLayoutDemo
class MyLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Flutter Tutorials'),
        ),
        body: LayoutDemo());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_tutorials/demos/hello.dart';
import 'package:flutter_tutorials/demos/video.dart';
import 'package:flutter_tutorials/demos/listview.dart';
import 'package:flutter_tutorials/demos/layoutdemo.dart';
// import 'package:flutter_tutorials/demos/flow_layout_demo.dart';
import 'package:flutter_tutorials/demos/flow_layout_demo2.dart';
import 'package:flutter_tutorials/demos/waterfall_demo.dart';
import 'package:flutter_tutorials/demos/waterfall_demo2.dart';
import 'package:flutter_tutorials/demos/waterfall_demo3.dart';
import 'package:flutter_tutorials/demos/staggered.dart';
import 'package:flutter_tutorials/demos/bottomnavigationbar_demo.dart';
import 'package:flutter_tutorials/pages/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      home: Home(),
      // home: AppBarDemo(),
      home: TabBarDemo(),
      // home: DrawerDemo(),
      //  home: BottomNavigationBarDemo(),
      // home: MyLayoutDemo(),
      // home: FlowLayoutDemo(),
//       home: WaterfallDemo3(),
      // home: Example08(),
      theme: ThemeData(
        // primarySwatch: Colors.green
        primaryColor: Color.fromRGBO(212, 61, 61, 1.0)
      ),
      routes: <String, WidgetBuilder> {
        '/about_page': (BuildContext context) => AboutPage(),
      },
    );
  }
}

// home: Home()
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Flutter Tutorials'),
      ),
      body: Hello()
      // body: VideoApp()
      // body: ListViewDemo()
    );
  }
}

// home: AppBarDemo()
class AppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Flutter Tutorials'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () => debugPrint('Menu button pressed!'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button pressed!'),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'AppBarDemo',
          style: TextStyle(fontSize: 32.0)
        )
      )
    );
  }
}

// home: TabBarDemo()
class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          title: Text('Flutter Tutorials'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () => debugPrint('Menu button pressed!'),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button pressed!'),
            ),
          ],
          // bottom: PreferredSize(
          //   preferredSize: const Size.fromHeight(300.0),
          //   child: Container(
          //     child: Column(
          //       children: <Widget>[
          //         Container(
          //           margin: EdgeInsets.all(16.0),
          //           width: double.infinity,
          //           height: 200.0,
          //           color: Colors.white,
          //           child: Center(
          //             child: Text('place something in appbar'),
          //           ),
          //         ),
          //         TabBar(
          //           indicatorColor: Colors.white,
          //           tabs: <Widget>[
          //             Tab(icon: Icon(Icons.mail)),
          //             Tab(icon: Icon(Icons.image)),
          //             Tab(icon: Icon(Icons.live_tv)),
          //             Tab(icon: Icon(Icons.view_agenda)),
          //           ]
          //         )
          //       ]
          //     )
          //   ),
          // ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.mail)),
              Tab(icon: Icon(Icons.image)),
              Tab(icon: Icon(Icons.live_tv)),
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.mail, size: 128.0, color: Colors.black12),
            Icon(Icons.image, size: 128.0, color: Colors.black12),
            // Icon(Icons.live_tv, size: 128.0, color: Colors.black12),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(16.0),
                    width: double.infinity,
                    height: 200.0,
                    color: Colors.grey,
                    child: Center(child: Text('Demo'),),
                  ),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    width: double.infinity,
                    height: 200.0,
                    color: Colors.grey,
                    child: Center(child: Text('Demo'),),
                  ),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    width: double.infinity,
                    height: 200.0,
                    color: Colors.grey,
                    child: Center(child: Text('Demo'),),
                  ),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    width: double.infinity,
                    height: 200.0,
                    color: Colors.grey,
                    child: Center(child: Text('Demo'),),
                  ),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    width: double.infinity,
                    height: 200.0,
                    color: Colors.grey,
                    child: Center(child: Text('Demo'),),
                  )
                ],
              ),
            )
            // LayoutDemo()
          ]
        )
        // body: Hello()
        // body: VideoApp()
        // body: ListViewDemo()
      ),
    );
  }
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
      body: Center(
        child: Text(
          'DrawerDemo',
          style: TextStyle(fontSize: 32.0)
        )
      ),
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('WANGCHI'),
              decoration: BoxDecoration(
                color: Colors.grey[100]
              )
            ),
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
          ]
        )
      ),
    );
  }
}

// home: BottomNavigatorDemo()
class BottomNavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBarDemo();
  }
}

// home: MyLayoutDemo
class MyLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Flutter Tutorials'),
      ),
      body: LayoutDemo()
    );
  }
}


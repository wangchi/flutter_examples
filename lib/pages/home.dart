import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> basicList = [
    {
      'name': 'Hello World',
      'path': '/hello_example',
    },
    {
      'name': 'AppBar',
      'path': '/appbar_example',
    },
    {
      'name': 'TabBar',
      'path': '/tabbar_example',
    },
    {
      'name': 'Darwer',
      'path': '/drawer_example',
    },
    {
      'name': 'BottomNavigationBar',
      'path': '/bottomnavigationbar_example',
    },
    {
      'name': 'PageView',
      'path': '/pageview_example',
    },
    {
      'name': 'ListView',
      'path': '/listview_example',
    },
    {
      'name': 'Video',
      'path': '/video_example',
    },
    {
      'name': 'Staggered Grid View Example',
      'path': '/staggered_example',
    },
    {
      'name': 'Sliver Staggered Grid',
      'path': '/staggered_example',
    },
    {
      'name': 'Sliver',
      'path': '/sliver_example',
    },
    {
      'name': 'Sliver TabBar',
      'path': '/sliver_tabbar_demo',
    },
    {
      'name': 'Sliver AppBar',
      'path': '/sliver_appbar_demo',
    },
    {
      'name': 'Sliver Persistent Header',
      'path': '/sliver_persistent_header_example',
    },
    {
      'name': 'Stick Header',
      'path': '/stick_header_example',
    },
    {
      'name': 'Lazyload Image',
      'path': '/lazyload_image_example',
    },
    {
      'name': 'Loading',
      'path': '/loading_example',
    },
    {
      'name': 'Get Image Info',
      'path': '/get_image_info_example',
    },
    {
      'name': 'Webview',
      'path': '/webview_example',
    },
    {
      'name': 'Flutter Redux',
      'path': '/flutter_redux',
    },
  ];

  List<Map<String, dynamic>> examples = [
    {'name': 'Fish Redux Counter', 'path': '/fish_redux_counter'}
  ];

  List<Widget> buildMenuList(list) {
    List<Widget> ret = [];

    list.forEach((item) {
      ret.add(
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(item['path']);
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3.0),
            ),
            child: Text(
              item['name'],
              style: TextStyle(color: Color.fromRGBO(34, 34, 34, 1)),
            ),
          ),
        ),
      );
    });

    return ret;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Examples',
            style: TextStyle(
              color: Color.fromRGBO(34, 34, 34, 1),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button pressed!'),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: () => debugPrint('Settings button pressed!'),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: 'Basic',
              ),
              Tab(
                text: 'Examples',
              ),
              // Tab(
              //   text: 'Data Entry',
              // ),
              // Tab(
              //   text: 'Data Display',
              // ),
              // Tab(
              //   text: 'Feedback',
              // ),
              // Tab(
              //   text: 'Gesture',
              // ),
              // Tab(
              //   text: 'Combination',
              // ),
              // Tab(
              //   text: 'Other',
              // ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              height: double.infinity,
              color: Color.fromRGBO(248, 248, 248, 1),
              child: SingleChildScrollView(
                child: Column(
                  children: buildMenuList(basicList),
                ),
              ),
            ),
            Container(
              height: double.infinity,
              color: Color.fromRGBO(248, 248, 248, 1),
              child: SingleChildScrollView(
                child: Column(
                  children: buildMenuList(examples),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

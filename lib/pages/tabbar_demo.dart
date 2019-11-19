import 'package:flutter/material.dart';
import 'package:flutter_tutorials/demos/listview.dart';
import 'package:flutter_tutorials/demos/drawerdemo.dart';
import 'package:flutter_tutorials/pages/pageviewdemo.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: new AppBar(
          title: Text('Flutter Tutorials'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button pressed!'),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.mail),
              ),
              Tab(
                icon: Icon(Icons.image),
              ),
              Tab(
                icon: Icon(Icons.live_tv),
              ),
              Tab(
                icon: Icon(Icons.view_agenda),
              ),
            ],
          ),
        ),
        drawer: DrawerDemo(),
        body: TabBarView(
          children: <Widget>[
            Icon(
              Icons.mail,
              size: 128.0,
              color: Colors.black12,
            ),
            ListViewDemo(),
            Icon(
              Icons.live_tv,
              size: 128.0,
              color: Colors.black12,
            ),
            PageViewDemo()
          ],
        ),
      ),
    );
  }
}

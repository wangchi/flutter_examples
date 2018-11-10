import 'package:flutter/material.dart';
import 'package:flutter_tutorials/demos/listview.dart';

// home: TabBarDemo()
class TabBarWithoutTitleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          flexibleSpace: SafeArea(
            child: getTabBar()
          ),
        ),
        body: getTabBarPages()
      ),
    );
  }

  Widget getTabBar() {
    return TabBar(
      indicatorWeight: 1.0,
      indicatorPadding: EdgeInsets.all(0.0),
      indicatorColor: Colors.white,
      tabs: <Widget>[
        Tab(text: "Add", icon: Icon(Icons.add)),
        Tab(text: "Edit", icon: Icon(Icons.edit)),
        Tab(text: "Delete", icon: Icon(Icons.delete)),
      ]
    );
  }

  Widget getTabBarPages() {
    return TabBarView(
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
    );
  }
}
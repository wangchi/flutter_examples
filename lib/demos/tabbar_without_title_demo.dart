import 'package:flutter/material.dart';
import 'package:flutter_tutorials/demos/listview.dart';
// import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter_tutorials/common/bubble_tab_indicator.dart';

// home: TabBarDemo()
class TabBarWithoutTitleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Container(
                //   width: double.infinity,
                //   color: Colors.green,
                //   height: 20.0,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 150.0,
                      height: 50.0,
                      // color: Colors.deepPurple,
                      child: getTabBar(),
                    ),
                    Container(
                      width: 50.0,
                      // color: Colors.green,
                      height: 50.0,
                    ),
                    Container(
                      width: 50.0,
                      // color: Colors.green,
                      height: 50.0,
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  color: Colors.yellow,
                  height: 10.0,
                ),
              ],
            )
          ),
          // flexibleSpace: SafeArea(
          //   child: getTabBar()
          // ),
        ),
        body: getTabBarPages()
      ),
    );
  }

  Widget getTabBar() {
    return Container(
      child: TabBar(
        labelColor: Colors.black87,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 5.0,
        indicatorPadding: EdgeInsets.all(0.0),
        indicatorColor: Colors.red,
        // indicatorSize: TabBarIndicatorSize.tab,
        // indicator: new BubbleTabIndicator(
        //   indicatorHeight: 5.0,
        //   indicatorColor: Colors.blueAccent,
        //   tabBarIndicatorSize: TabBarIndicatorSize.tab,
        // ),
        tabs: <Widget>[
          Tab(
            child: Container(
              // alignment: Alignment.centerLeft,
              // height: double.infinity,
              child: Text(
                '推荐',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          // Tab(text: "发现"),
          Tab(
            child: Container(
              // alignment: Alignment.centerLeft,
              // height: double.infinity,
              child: Text(
                '我的',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          // Tab(text: "Edit", icon: Icon(Icons.edit)),
          // Tab(text: "Delete", icon: Icon(Icons.delete)),
        ]
      ),
    );
  }

  Widget getTabBarPages() {
    return TabBarView(
      children: <Widget>[
        Icon(Icons.mail, size: 128.0, color: Colors.black12),
        // Icon(Icons.image, size: 128.0, color: Colors.black12),
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
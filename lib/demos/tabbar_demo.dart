import 'package:flutter/material.dart';
import 'package:flutter_tutorials/demos/listview.dart';

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
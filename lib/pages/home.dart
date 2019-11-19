import 'package:flutter/material.dart';

import 'package:flutter_tutorials/demos/video.dart';
import 'package:flutter_tutorials/demos/listview.dart';
// import 'package:flutter_tutorials/demos/layoutdemo.dart';
// import 'package:flutter_tutorials/demos/flow_layout_demo.dart';
// import 'package:flutter_tutorials/demos/flow_layout_demo2.dart';
// import 'package:flutter_tutorials/demos/waterfall_demo.dart';
// import 'package:flutter_tutorials/demos/waterfall_demo2.dart';
// import 'package:flutter_tutorials/demos/waterfall_demo3.dart';
import 'package:flutter_tutorials/demos/staggered.dart';
import 'package:flutter_tutorials/demos/sliver_staggered_grid_demo.dart';
import 'package:flutter_tutorials/demos/bottomnavigationbar_demo.dart';
// import 'package:flutter_tutorials/pages/about.dart';
// import 'package:flutter_tutorials/demos/tabbar_demo.dart';
// import 'package:flutter_tutorials/demos/tabbar_without_title_demo.dart';
import 'package:flutter_tutorials/demos/sliver_demo.dart';
import 'package:flutter_tutorials/demos/sliver_tabbar_demo.dart';
import 'package:flutter_tutorials/demos/slivers/sliver_appbar_demo.dart';
import 'package:flutter_tutorials/demos/slivers/sliver_persistent_header_demo.dart';
import 'package:flutter_tutorials/demos/stick_header_demo.dart';
import 'package:flutter_tutorials/demos/lazyload_image.dart';
import 'package:flutter_tutorials/demos/loading.dart';
import 'package:flutter_tutorials/demos/get_image_size.dart';
import 'package:flutter_tutorials/demos/get_image_info.dart';
import 'package:flutter_tutorials/pages/webview_demo.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorials'),
      ),
      body: Container(
        height: double.infinity,
        color: Color.fromRGBO(0, 0, 0, .05),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/hello');
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('1. Hello World'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/appbar_demo');
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('2. AppBar'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/tabbar_demo');
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('3. TabBar'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return VideoApp();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('4. Video'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ListViewDemo();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('5. ListView'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Staggered();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('6. Staggered'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SliverStaggeredGridDemo();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('7. SliverStaggeredGridDemo'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return BottomNavigationBarDemo();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('8. BottomNavigationBarDemo'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SliverDemo();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('9. SliverDemo'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SliverTabBarDemo();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('10. SliverTabBarDemo'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SliverAppBarDemo();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('11. SliverAppBarDemo'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SliverPersistentHeaderDemo();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('12. SliverPersistentHeaderDemo'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return StickHeaderDemo();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('13. StickHeaderDemo'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LazyloadImageDemo();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('14. LazyloadImageDemo'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoadingDemo();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('15. LoadingDemo'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return GetImageSizeDemo();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('16. GetImageSizeDemo'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return GetImageInfo();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('17. StaggeredGridViewDemo'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed('/webview_demo');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WebViewDemo();
                      },
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('18. Webview'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('sss');
                  Navigator.of(context).pushNamed('/flutter_redux');
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  padding: EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text('19. Flutter Redux'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

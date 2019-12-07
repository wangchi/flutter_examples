import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/hello_example.dart';
import 'pages/appbar_example.dart';
import 'pages/tabbar_example.dart';
import 'pages/drawer_example.dart';
import 'pages/pageview_example.dart';
import 'pages/listview_example.dart';
import 'pages/video_example.dart';
import 'pages/staggered_example.dart';
import 'pages/sliver_staggered_grid_example.dart';
import 'pages/bottomnavigationbar_example.dart';
import 'pages/sliver_example.dart';
import 'pages/sliver_tabbar_example.dart';
import 'pages/sliver_appbar_example.dart';
import 'pages/sliver_persistent_header_example.dart';
import 'pages/stick_header_example.dart';
import 'pages/lazyload_image_example.dart';
import 'pages/loading_example.dart';
import 'pages/get_image_info_example.dart';
import 'pages/webview_example.dart';
import 'pages/flutter_redux_example.dart';
import 'pages/examples/fish_redux_counter/page.dart';

final routes = {
  // home entry
  '/': (BuildContext context) => Home(),

  // baisc
  '/hello_example': (BuildContext context) => HelloExample(),
  '/appbar_example': (BuildContext context) => AppBarExample(),
  '/tabbar_example': (BuildContext context) => TabBarExample(),
  '/drawer_example': (BuildContext context) => DrawerExample(),
  '/pageview_example': (BuildContext context) => PageViewExample(),
  '/listview_example': (BuildContext context) => ListViewExample(),
  '/video_example': (BuildContext context) => VideoExample(),
  '/staggered_example': (BuildContext context) => StaggeredExample(),
  '/sliver_staggered_example': (BuildContext context) =>
      SliverStaggeredGridExample(),
  '/bottomnavigationbar_example': (BuildContext context) =>
      BottomNavigationBarExample(),
  '/sliver_example': (BuildContext context) => SliverExample(),
  '/sliver_tabbar_demo': (BuildContext context) => SliverTabBarExample(),
  '/sliver_appbar_demo': (BuildContext context) => SliverAppBarExample(),
  '/sliver_persistent_header_example': (BuildContext context) =>
      SliverPersistentHeaderExample(),
  '/stick_header_example': (BuildContext context) => StickHeaderExample(),
  '/lazyload_image_example': (BuildContext context) => LazyloadImageExample(),
  '/loading_example': (BuildContext context) => LoadingExample(),
  '/get_image_info_example': (BuildContext context) => GetImageInfoExample(),
  '/webview_example': (BuildContext context) => WebViewExample(),
  '/flutter_redux': (BuildContext context) => FlutterReduxExample(),

  // examples
  '/fish_redux_counter': (BuildContext content) =>
      CounterPage().buildPage(<String, dynamic>{}),
};

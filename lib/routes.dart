import 'package:flutter/material.dart';

import 'package:flutter_tutorials/pages/home.dart';
import 'package:flutter_tutorials/pages/hello.dart';
import 'package:flutter_tutorials/pages/appbar_demo.dart';
import 'package:flutter_tutorials/pages/tabbar_demo.dart';
import 'package:flutter_tutorials/pages/flutter_redux_demo.dart';
import 'package:flutter_tutorials/pages/webview_demo.dart';

final routes = {
  '/': (BuildContext context) => Home(),
  '/hello': (BuildContext context) => Hello(),
  '/appbar_demo': (BuildContext context) => AppBarDemo(),
  '/tabbar_demo': (BuildContext context) => TabBarDemo(),
  '/flutter_redux': (BuildContext context) => FlutterReduxDemo(),
  '/webview_demo': (BuildContext context) => WebViewDemo()
};

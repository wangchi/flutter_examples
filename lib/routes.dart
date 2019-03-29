import 'package:flutter/material.dart';

import 'package:flutter_tutorials/screens/home.dart';
import 'package:flutter_tutorials/screens/FlutterRedux.dart';
import 'package:flutter_tutorials/pages/WebViewDemo.dart';

final routes = {
  '/': (BuildContext context) => Home(),
  '/flutter_redux': (BuildContext context) => FlutterRedux(),
  // '/webview_demo': (BuildContext context) => WebViewDemo()
};

import 'package:flutter/material.dart';

class Adapter {
//  static Adapter instance = new Adapter();

  int designWidth;
  int designHeight;

  static MediaQueryData mediaQueryData;
  static double _screenWidth;
  static double _screenHeight;
  static double _pixelRatio;

  Adapter({int width, int height}) {
    designWidth = width;
    designHeight = height;
  }

//  static Adapter getInstance() {
//    return instance;
//  }

  void init(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    mediaQueryData = mediaQuery;
    _pixelRatio = mediaQuery.devicePixelRatio;
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
  }

  get pixelRatio => _pixelRatio;
  get screenWidth => _screenWidth;
  get screenHeight => _screenHeight;

  get scaleWidth => _screenWidth / designWidth;
  get scaleHeight => _screenHeight / designHeight;

  width(int width) => width * scaleWidth;
  height(int height) => height * scaleHeight;
}

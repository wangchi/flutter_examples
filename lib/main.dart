import 'package:flutter/material.dart';
import 'package:flutter_examples/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // red theme
        // primaryColor: Color.fromRGBO(212, 61, 61, 1.0),
        // yellow theme
        primaryColor: Color.fromRGBO(255, 195, 0, 1),
        textTheme: TextTheme(
          headline: TextStyle(color: Color.fromRGBO(34, 34, 34, 1)),
          title: TextStyle(color: Color.fromRGBO(34, 34, 34, 1)),
          body1: TextStyle(color: Color.fromRGBO(34, 34, 34, 1)),
        ),
      ),
      routes: routes,
    );
  }
}
